import 'package:green_ledger_mobile/core/result.dart';

/// A PDF saved on the phone, ready for the share sheet.
class DocumentFile {
  const DocumentFile({required this.path, required this.filename});

  final String path;
  final String filename;
}

/// PDFs are built by the server (queued, printed by its worker); the phone waits for the
/// file and downloads it.
abstract interface class DocumentsRepository {
  Future<Result<DocumentFile>> receiptPdf(String receiptId);
}
