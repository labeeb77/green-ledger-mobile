import 'dart:convert';
import 'dart:io';

import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class CollectRepositoryImpl implements CollectRepository {
  CollectRepositoryImpl({
    required this._collections,
    required this._accounts,
    required this._files,
    required this._drafts,
    this._filesDir = getApplicationSupportDirectory,
  });

  final api.CollectionsClient _collections;
  final api.MoneyAccountsClient _accounts;
  final api.FilesClient _files;
  final DraftStore _drafts;

  /// Where draft screenshots are kept; a temp directory in tests.
  final Future<Directory> Function() _filesDir;

  @override
  Future<Result<List<MoneyAccount>>> accounts() async {
    try {
      final rows = await _accounts.moneyAccountsControllerList();
      return Ok([
        for (final a in rows)
          if (a.active)
            if (_methodOf(a.type) case final method?) MoneyAccount(id: a.id, name: a.name, method: method),
      ]);
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  static PaymentMethod? _methodOf(api.MoneyAccountDtoOutputType type) => switch (type) {
    api.MoneyAccountDtoOutputType.upi => PaymentMethod.upi,
    api.MoneyAccountDtoOutputType.bank => PaymentMethod.bank,
    _ => null,
  };

  @override
  Future<Result<AllocationPreview>> preview({required String customerId, required int amount}) async {
    try {
      return Ok(
        previewFromDto(await _collections.customerReceiptsControllerPreview(customerId: customerId, amount: amount)),
      );
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<SavedReceipt>> save({
    required String customerId,
    required String shopName,
    required String receiptDate,
    required List<PaymentLine> lines,
    required String idempotencyKey,
    Map<String, int>? allocations,
  }) async {
    final used = lines.where((l) => l.amount > 0).toList();
    final body = api.CreateCustomerReceiptDto(
      customerId: customerId,
      receiptDate: receiptDate,
      splits: [for (final line in used) splitFor(line)],
      allocations: allocations == null
          ? null
          : [
              for (final MapEntry(:key, :value) in allocations.entries)
                if (value > 0) api.Allocations7(billId: key, amount: value),
            ],
    );
    final screenshots = {for (final (i, line) in used.indexed) i: ?line.screenshotPath};
    final result = await _post(body, screenshots, idempotencyKey);
    switch (result) {
      case Ok():
        await _drafts.remove(idempotencyKey);
        await _deleteFiles(await _draftCopies(idempotencyKey));
      case Err(:final failure) when failure.kind == FailureKind.network:
        await _keepDraft(body, screenshots, idempotencyKey, shopName);
      case Err():
    }
    return result;
  }

  /// SEND AGAIN from the Drafts screen: the same body and key as the first try.
  Future<Result<String>> sendDraft(Draft draft) async {
    final payload = jsonDecode(draft.payload) as Map<String, Object?>;
    final body = api.CreateCustomerReceiptDto.fromJson(payload['body']! as Map<String, Object?>);
    final screenshots = {
      for (final MapEntry(:key, :value) in (payload['screenshots']! as Map<String, Object?>).entries)
        int.parse(key): value! as String,
    };
    final result = await _post(body, screenshots, draft.id);
    if (result is Ok) await _deleteFiles(screenshots.values);
    return switch (result) {
      Ok(:final value) => Ok('Saved ${value.number}'),
      Err(:final failure) => Err(failure),
    };
  }

  /// Uploads the screenshots (split index → path), then posts the receipt.
  Future<Result<SavedReceipt>> _post(
    api.CreateCustomerReceiptDto body,
    Map<int, String> screenshots,
    String idempotencyKey,
  ) async {
    try {
      final splits = [...body.splits];
      for (final MapEntry(key: i, value: path) in screenshots.entries) {
        // A key derived from the collection's key, so a retry never uploads twice.
        final file = await _files.uploadsControllerUpload(
          kind: api.Kind.upiScreenshot,
          idempotencyKey: const Uuid().v5(idempotencyKey, 'screenshot-$i'),
          file: File(path),
        );
        splits[i] = splits[i].copyWith(screenshotFileId: file.id);
      }
      final receipt = await _collections.customerReceiptsControllerCreate(
        idempotencyKey: idempotencyKey,
        body: body.copyWith(splits: splits),
      );
      return Ok(SavedReceipt(id: receipt.id, number: receipt.number, total: receipt.total));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  /// Keeps the collection on the phone. Screenshots are copied out of the picker's
  /// cache, which the system may clear.
  Future<void> _keepDraft(
    api.CreateCustomerReceiptDto body,
    Map<int, String> screenshots,
    String idempotencyKey,
    String shopName,
  ) async {
    final kept = <String, String>{};
    if (screenshots.isNotEmpty) {
      final dir = Directory('${(await _filesDir()).path}/drafts');
      await dir.create(recursive: true);
      for (final MapEntry(key: i, value: path) in screenshots.entries) {
        final copy = File('${dir.path}/$idempotencyKey-$i${_extension(path)}');
        if (!copy.existsSync()) await File(path).copy(copy.path);
        kept['$i'] = copy.path;
      }
    }
    final total = body.splits.fold(0, (sum, s) => sum + s.amount);
    await _drafts.keep(
      Draft(
        id: idempotencyKey,
        kind: DraftKind.receipt,
        title: 'Payment ${formatMoney(total)}',
        subtitle: shopName,
        payload: jsonEncode({'body': body, 'screenshots': kept}),
        createdAt: DateTime.now(),
      ),
    );
  }

  /// Screenshots copied for an earlier failed try of this collection.
  Future<List<String>> _draftCopies(String idempotencyKey) async {
    final dir = Directory('${(await _filesDir()).path}/drafts');
    if (!dir.existsSync()) return const [];
    return [
      for (final f in dir.listSync())
        if (f is File && f.uri.pathSegments.last.startsWith('$idempotencyKey-')) f.path,
    ];
  }

  static String _extension(String path) {
    final dot = path.lastIndexOf('.');
    return dot > path.lastIndexOf('/') ? path.substring(dot) : '';
  }

  static Future<void> _deleteFiles(Iterable<String> paths) async {
    for (final path in paths) {
      try {
        await File(path).delete();
      } on FileSystemException {
        // Already gone.
      }
    }
  }
}

AllocationPreview previewFromDto(api.ReceiptAllocationPreviewDtoOutput p) {
  final bills = {for (final b in p.openBills) b.id: b};
  return AllocationPreview(
    openBills: [for (final b in p.openBills) OpenBill(id: b.id, number: b.number, open: b.open)],
    bills: [
      for (final a in p.allocations)
        if (bills[a.billId] case final bill?)
          SettledBill(number: bill.number, amount: a.amount, full: a.amount >= bill.open),
    ],
    advance: p.advance,
  );
}

api.Splits4 splitFor(PaymentLine line, {String? screenshotFileId}) {
  String? text(String v) => v.trim().isEmpty ? null : v.trim();
  return switch (line.method) {
    PaymentMethod.cash => api.Splits4(method: api.Method.cash, amount: line.amount),
    PaymentMethod.upi => api.Splits4(
      method: api.Method.upi,
      amount: line.amount,
      accountId: line.accountId,
      reference: text(line.reference),
      screenshotFileId: screenshotFileId,
    ),
    PaymentMethod.bank => api.Splits4(
      method: api.Method.bankTransfer,
      amount: line.amount,
      accountId: line.accountId,
      reference: text(line.reference),
    ),
    PaymentMethod.cheque => api.Splits4(
      method: api.Method.cheque,
      amount: line.amount,
      chequeNo: text(line.chequeNo),
      chequeBank: text(line.chequeBank),
      chequeDate: line.chequeDate,
    ),
  };
}
