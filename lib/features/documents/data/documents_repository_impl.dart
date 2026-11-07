import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class DocumentsRepositoryImpl implements DocumentsRepository {
  DocumentsRepositoryImpl({
    required this._client,
    Dio? download,
    Future<Directory> Function()? directory,
    this.pollEvery = const Duration(seconds: 1),
    this.maxPolls = 30,
  }) : _download = download ?? Dio(),
       _directory = directory ?? getTemporaryDirectory;

  final api.DocumentsClient _client;

  /// A plain client: the file link is presigned, so it must not carry our bearer token.
  final Dio _download;
  final Future<Directory> Function() _directory;
  final Duration pollEvery;
  final int maxPolls;

  @override
  Future<Result<DocumentFile>> receiptPdf(String receiptId) =>
      _pdf(api.RequestPdfDto(template: api.RequestPdfDtoTemplate.receipt, id: receiptId));

  @override
  Future<Result<DocumentFile>> billPdf(String billId) =>
      _pdf(api.RequestPdfDto(template: api.RequestPdfDtoTemplate.salesBill, id: billId));

  @override
  Future<Result<DocumentFile>> customerStatementPdf(String customerId, {required String from, required String to}) =>
      _pdf(
        api.RequestPdfDto(template: api.RequestPdfDtoTemplate.customerStatement, id: customerId, from: from, to: to),
      );

  Future<Result<DocumentFile>> _pdf(api.RequestPdfDto request) async {
    try {
      // A PDF request changes nothing on the server, so each tap is its own action.
      var status = await _client.documentsControllerRequest(idempotencyKey: const Uuid().v4(), body: request);
      for (var i = 0; status.status == api.PdfStatusDtoOutputStatus.queued && i < maxPolls; i++) {
        await Future<void>.delayed(pollEvery);
        status = await _client.documentsControllerStatus(jobId: status.jobId!);
      }
      final url = status.url;
      if (status.status != api.PdfStatusDtoOutputStatus.ready || url == null) {
        return const Err(
          AppFailure(kind: FailureKind.server, message: 'The PDF could not be made. Try again in a minute.'),
        );
      }
      final dir = await _directory();
      final path = '${dir.path}/${status.filename}';
      await _download.download(url, path);
      return Ok(DocumentFile(path: path, filename: status.filename));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}
