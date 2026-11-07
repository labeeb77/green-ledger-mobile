import 'package:green_ledger_mobile/core/result.dart';

enum ApprovalKind {
  newCustomer('New customer'),
  cancellation('Cancel entry'),
  rateBelowMinimum('Rate below minimum'),
  overCreditLimit('Over credit limit'),
  wastage('Wastage'),
  stockAdjustment('Stock adjustment'),
  writeOff('Write-off'),
  customerReturn('Customer return'),
  other('Approval');

  ApprovalKind(this.label);

  final String label;
}

/// One entry waiting for the owner/manager (ux-design 4.6). [details] are the reason and
/// numbers in plain words, so the decision needs no other screen.
class Approval {
  const Approval({
    required this.id,
    required this.kind,
    required this.requester,
    required this.subject,
    required this.details,
    required this.createdAt,
    this.amount,
  });

  final String id;
  final ApprovalKind kind;
  final String requester;

  /// The document number, shop or name the approval is about ('' when unknown).
  final String subject;
  final List<String> details;
  final DateTime createdAt;

  /// Paise, e.g. the order's estimated total.
  final int? amount;

  /// `Over credit limit · Ravi → Malabar Traders`.
  String get title => [kind.label, if (subject.isNotEmpty) '$requester → $subject' else requester].join(' · ');
}

/// Quick reject notes (ux-design 4.6); free text is allowed too.
const rejectNotes = ['Over limit', 'Wrong rate', 'Call me'];

abstract interface class ApprovalsRepository {
  /// Pending approvals, oldest first.
  Future<Result<List<Approval>>> pending();

  Future<Result<void>> approve(String id, {required String idempotencyKey});

  /// [note] is required (the requester sees it).
  Future<Result<void>> reject(String id, {required String note, required String idempotencyKey});
}
