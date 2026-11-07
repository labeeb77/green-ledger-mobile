import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/documents/data/documents_repository_impl.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:mocktail/mocktail.dart';

class _MockClient extends Mock implements api.DocumentsClient;

class _MockDio extends Mock implements Dio;

api.PdfStatusDtoOutput _status(String status, {String? url}) => api.PdfStatusDtoOutput.fromJson({
  'jobId': 'j1',
  'status': status,
  'url': url,
  'filename': 'receipt-R-0042.pdf',
  'error': null,
});

void main() {
  setUpAll(() => registerFallbackValue(const api.RequestPdfDto(template: api.RequestPdfDtoTemplate.receipt)));

  late _MockClient client;
  late _MockDio download;
  DocumentsRepositoryImpl repository() => DocumentsRepositoryImpl(
    client: client,
    download: download,
    directory: () async => Directory('/tmp'),
    pollEvery: Duration.zero,
    maxPolls: 3,
  );

  setUp(() {
    client = _MockClient();
    download = _MockDio();
    when(
      () => client.documentsControllerRequest(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenAnswer((_) async => _status('queued'));
    when(() => download.download(any<String>(), any<String>()))
        .thenAnswer((_) async => Response(requestOptions: RequestOptions()));
  });

  test('waits for the worker, then downloads the presigned file with a plain client', () async {
    var polls = 0;
    when(() => client.documentsControllerStatus(jobId: 'j1')).thenAnswer(
      (_) async =>
          ++polls < 2 ? _status('queued') : _status('ready', url: 'http://localhost:9010/wm-files/r.pdf?sig=x'),
    );
    final result = await repository().receiptPdf('r1');
    expect((result as Ok<DocumentFile>).value.path, '/tmp/receipt-R-0042.pdf');
    verify(() => download.download('http://localhost:9010/wm-files/r.pdf?sig=x', '/tmp/receipt-R-0042.pdf')).called(1);
    final body =
        verify(
              () => client.documentsControllerRequest(
                idempotencyKey: any(named: 'idempotencyKey'),
                body: captureAny(named: 'body'),
              ),
            ).captured.single
            as api.RequestPdfDto;
    expect(body.template, api.RequestPdfDtoTemplate.receipt);
    expect(body.id, 'r1');
  });

  test('gives up in plain words when the PDF never gets ready', () async {
    when(() => client.documentsControllerStatus(jobId: 'j1')).thenAnswer((_) async => _status('queued'));
    final result = await repository().receiptPdf('r1');
    final failure = (result as Err<DocumentFile>).failure;
    expect(failure.kind, FailureKind.server);
    expect(failure.message, 'The PDF could not be made. Try again in a minute.');
    verifyNever(() => download.download(any<String>(), any<String>()));
  });
}
