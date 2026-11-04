import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';

abstract interface class AuthRepository {
  /// The saved session after an app start, or `null` when signed out.
  Future<Result<Session?>> restore();

  Future<Result<Session>> signIn({required String phone, required String password});

  Future<Result<Session>> changePassword({
    required String currentPassword,
    required String newPassword,
    required String idempotencyKey,
  });

  /// Signs out on the server (best effort) and forgets the tokens.
  Future<void> signOut();

  /// Fires when the session can no longer be refreshed (revoked, reused, expired).
  Stream<void> get sessionExpired;
}
