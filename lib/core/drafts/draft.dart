import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';

/// What a save says when it failed for lack of network and was kept (ux-design 7).
const AppFailure draftKept = AppFailure(kind: FailureKind.network, message: 'No internet. Your entry is kept.');

/// [failure], or [draftKept] when the entry was kept as a draft.
AppFailure keptIfOffline(AppFailure failure) => failure.kind == FailureKind.network ? draftKept : failure;

/// What a draft is; each kind is sent by its own feature's repository.
enum DraftKind { receipt, visit, order, goodsReceipt, dispatch, wastage, inspection }

/// An entry whose save failed for lack of network (ux-design section 7: "No internet.
/// Your entry is kept."). [id] is its idempotency key, so SEND AGAIN never posts twice.
class Draft {
  const Draft({
    required this.id,
    required this.kind,
    required this.title,
    required this.subtitle,
    required this.payload,
    required this.createdAt,
    this.lastError,
  });

  final String id;
  final DraftKind kind;

  /// e.g. "Payment ₹8,000" / "Visit · Promised".
  final String title;

  /// The shop name.
  final String subtitle;

  /// The request as first sent (JSON), owned by the feature that made it.
  final String payload;
  final DateTime createdAt;

  /// Why the last SEND AGAIN failed, in plain words.
  final String? lastError;
}

abstract interface class DraftStore {
  /// The signed-in user's drafts, oldest first.
  Stream<List<Draft>> watch();

  /// Keeps (or replaces) a draft for the signed-in user.
  Future<void> keep(Draft draft);

  Future<void> markFailed(String id, String message);

  /// Forgets a draft once it is sent, or when the user deletes it.
  Future<void> remove(String id);
}

/// Sends a draft again; the value is what to say once it is saved (e.g. "Saved R-0042").
typedef DraftSender = Future<Result<String>> Function(Draft draft);
