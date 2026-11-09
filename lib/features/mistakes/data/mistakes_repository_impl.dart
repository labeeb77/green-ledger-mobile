import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/mistakes/domain/mistakes.dart';

class MistakesRepositoryImpl implements MistakesRepository {
  MistakesRepositoryImpl(this._client);

  final api.MistakeReportsClient _client;

  @override
  Future<Result<void>> report({
    required MistakeTarget target,
    required MistakeReason reason,
    required String idempotencyKey,
    String note = '',
  }) => _run(() async {
    await _client.mistakeReportsControllerCreate(
      idempotencyKey: idempotencyKey,
      body: mistakeReportFor(target: target, reason: reason, note: note),
    );
  });

  @override
  Future<Result<List<MistakeReport>>> mine() => _run(() async {
    // The server lists only the agent's own reports.
    final page = await _client.mistakeReportsControllerList();
    return [for (final r in page.items) mistakeReportFrom(r)];
  });

  Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Ok(await call());
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

/// The request body.
api.CreateMistakeReportBody mistakeReportFor({
  required MistakeTarget target,
  required MistakeReason reason,
  String note = '',
}) => api.CreateMistakeReportBody(
  documentType: switch (target.entry) {
    MistakeEntry.bill => api.CreateMistakeReportBodyDocumentType.salesBill,
    MistakeEntry.receipt => api.CreateMistakeReportBodyDocumentType.receipt,
  },
  documentId: target.id,
  reason: switch (reason) {
    MistakeReason.wrongAmount => api.CreateMistakeReportBodyReason.wrongAmount,
    MistakeReason.wrongShop => api.CreateMistakeReportBodyReason.wrongShop,
    MistakeReason.wrongProduct => api.CreateMistakeReportBodyReason.wrongProduct,
    MistakeReason.wrongPayment => api.CreateMistakeReportBodyReason.wrongPayment,
    MistakeReason.duplicate => api.CreateMistakeReportBodyReason.duplicate,
    MistakeReason.other => api.CreateMistakeReportBodyReason.other,
  },
  note: note.trim().isEmpty ? null : note.trim(),
);

/// A page item (the generator inlines the `MistakeReport` schema as `Items3`). Enums map by
/// their wire values, since the generated nested enum names change with the contract.
MistakeReport mistakeReportFrom(api.Items3 r) => MistakeReport(
  id: r.id,
  number: r.document.number,
  shopName: r.document.customer.name,
  total: r.document.total,
  reason: _reasons[r.reason.json],
  note: r.note,
  open: r.status.json == 'open',
  createdAt: r.createdAt,
  entryCancelled: r.document.status.json == 'cancelled',
  closeNote: r.closeNote,
);

const Map<String, MistakeReason> _reasons = {
  'wrong_amount': MistakeReason.wrongAmount,
  'wrong_shop': MistakeReason.wrongShop,
  'wrong_product': MistakeReason.wrongProduct,
  'wrong_payment': MistakeReason.wrongPayment,
  'duplicate': MistakeReason.duplicate,
  'other': MistakeReason.other,
};
