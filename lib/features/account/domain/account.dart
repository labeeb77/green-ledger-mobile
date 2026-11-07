import 'package:green_ledger_mobile/core/result.dart';

/// The vendor's support contact (Help & support); a blank one isn't shown.
class SupportContact {
  const SupportContact({this.phone, this.whatsapp, this.email});

  final String? phone;
  final String? whatsapp;
  final String? email;

  bool get isEmpty => phone == null && whatsapp == null && email == null;
}

enum DeletionStatus { pending, done, declined }

/// The user's request to delete their account (both app stores require it). Staff
/// requests go to the owner, who deactivates the login; an owner's goes to support.
class DeletionRequest {
  const DeletionRequest({
    required this.status,
    required this.createdAt,
    required this.byOwner,
    this.reason,
    this.closedNote,
  });

  final DeletionStatus status;
  final DateTime createdAt;

  /// True when the business owner handles it (staff); false when support does (owner).
  final bool byOwner;
  final String? reason;
  final String? closedNote;
}

abstract interface class AccountRepository {
  Future<Result<SupportContact>> support();

  /// The newest request, or null when none was made.
  Future<Result<DeletionRequest?>> myDeletionRequest();

  Future<Result<DeletionRequest>> requestDeletion({required String idempotencyKey, String? reason});
}
