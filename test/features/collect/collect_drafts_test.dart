import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/collect/data/collect_repository_impl.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';

class _MockCollections extends Mock implements api.CollectionsClient;

class _MockAccounts extends Mock implements api.MoneyAccountsClient;

class _MockFiles extends Mock implements api.FilesClient;

class _MockReceipt extends Mock implements api.CustomerReceiptDtoOutput;

const key = '7b0c2a52-1f0e-4f4e-9a57-3d2b6c1e9f10';

DioException offline() => DioException(requestOptions: RequestOptions(), type: DioExceptionType.connectionError);

void main() {
  setUpAll(() {
    registerFallbackValue(const api.CreateCustomerReceiptDto(customerId: '', splits: []));
    registerFallbackValue(api.Kind.upiScreenshot);
    registerFallbackValue(File(''));
  });

  late _MockCollections collections;
  late _MockFiles files;
  late MemoryDraftStore drafts;
  late Directory dir;
  late CollectRepositoryImpl repository;

  setUp(() async {
    collections = _MockCollections();
    files = _MockFiles();
    drafts = MemoryDraftStore();
    dir = await Directory.systemTemp.createTemp('drafts-test');
    repository = CollectRepositoryImpl(
      collections: collections,
      accounts: _MockAccounts(),
      files: files,
      drafts: drafts,
      filesDir: () async => dir,
    );
    when(
      () => files.uploadsControllerUpload(
        kind: any(named: 'kind'),
        idempotencyKey: any(named: 'idempotencyKey'),
        file: any(named: 'file'),
      ),
    ).thenAnswer((_) async => const api.FileLinkDtoOutput(id: 'f1', url: '/f1'));
  });
  tearDown(() => dir.delete(recursive: true));

  Future<Result<SavedReceipt>> save(String screenshot) => repository.save(
    customerId: 'c1',
    shopName: 'Malabar Traders',
    receiptDate: '2026-11-07',
    lines: [
      const PaymentLine(method: PaymentMethod.cash, amount: 500000),
      PaymentLine(method: PaymentMethod.upi, amount: 300000, accountId: 'upi1', screenshotPath: screenshot),
    ],
    idempotencyKey: key,
  );

  test('offline: kept as a draft, and SEND AGAIN posts the same request with the same key', () async {
    final picked = File('${dir.path}/picked.jpg')..writeAsBytesSync([1, 2, 3]);
    when(
      () => collections.customerReceiptsControllerCreate(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenThrow(offline());

    final result = await save(picked.path);
    expect((result as Err).failure.kind, FailureKind.network);
    final draft = drafts.drafts.single;
    expect(draft.id, key);
    expect(draft.kind, DraftKind.receipt);
    expect(draft.title, 'Payment ₹8,000');
    expect(draft.subtitle, 'Malabar Traders');

    // The screenshot is copied out of the picker's cache.
    picked.deleteSync();
    final receipt = _MockReceipt();
    when(() => receipt.id).thenReturn('r1');
    when(() => receipt.number).thenReturn('R-0042');
    when(() => receipt.total).thenReturn(800000);
    when(
      () => collections.customerReceiptsControllerCreate(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenAnswer((_) async => receipt);

    expect(await repository.sendDraft(draft), isA<Ok<String>>().having((r) => r.value, 'value', 'Saved R-0042'));
    final posts = verify(
      () => collections.customerReceiptsControllerCreate(
        idempotencyKey: key,
        body: captureAny(named: 'body'),
      ),
    ).captured.cast<api.CreateCustomerReceiptDto>();
    expect(posts, hasLength(2));
    // Byte-for-byte the same body, so the server's key hash matches.
    expect(jsonEncode(posts[1]), jsonEncode(posts[0]));
    expect(posts[0].receiptDate, '2026-11-07');
    expect(posts[0].splits[1].screenshotFileId, 'f1');
    final uploadKeys = verify(
      () => files.uploadsControllerUpload(
        kind: any(named: 'kind'),
        idempotencyKey: captureAny(named: 'idempotencyKey'),
        file: any(named: 'file'),
      ),
    ).captured;
    expect(uploadKeys.toSet(), hasLength(1)); // the screenshot is never uploaded twice
    expect(dir.listSync(recursive: true).whereType<File>(), isEmpty); // the copy is gone
  });

  test('a refusal is not kept as a draft', () async {
    when(
      () => collections.customerReceiptsControllerCreate(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenThrow(
      DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(),
          statusCode: 422,
          data: {
            'error': {'code': 'X', 'message': 'Choose a valid account', 'requestId': 'r'},
          },
        ),
      ),
    );
    final picked = File('${dir.path}/picked.jpg')..writeAsBytesSync([1]);
    expect((await save(picked.path) as Err).failure.kind, FailureKind.rejected);
    expect(drafts.drafts, isEmpty);
  });

  test('a chosen allocation is sent as given, without the zero rows', () async {
    when(
      () => collections.customerReceiptsControllerCreate(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenThrow(offline());
    await repository.save(
      customerId: 'c1',
      shopName: 'Malabar Traders',
      receiptDate: '2026-11-07',
      lines: const [PaymentLine(method: PaymentMethod.cash, amount: 800000)],
      idempotencyKey: key,
      allocations: {'b1': 0, 'b2': 800000},
    );
    final body =
        verify(
              () => collections.customerReceiptsControllerCreate(
                idempotencyKey: key,
                body: captureAny(named: 'body'),
              ),
            ).captured.single
            as api.CreateCustomerReceiptDto;
    expect(body.allocations, [const api.Allocations7(billId: 'b2', amount: 800000)]);
    // The draft keeps it, so SEND AGAIN sends the same allocation.
    expect(drafts.drafts.single.payload, contains('"billId":"b2"'));
  });
}
