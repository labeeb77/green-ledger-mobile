import 'package:green_ledger_mobile/core/permissions/permissions.dart';

enum Role { owner, manager, billing, godown, agent }

/// `full`, `read_only` (subscription expired: entries are paused) or `blocked`
/// (suspended).
enum SubscriptionAccess { full, readOnly, blocked }

class SessionUser {
  const SessionUser({required this.id, required this.name, required this.phone, required this.role});

  final String id;
  final String name;
  final String phone;
  final Role role;
}

/// Who is signed in and what they may see (from `GET /auth/me`).
class Session {
  const Session({
    required this.user,
    required this.businessName,
    required this.access,
    required this.permissions,
    required this.mustChangePassword,
  });

  final SessionUser user;
  final String businessName;
  final SubscriptionAccess access;
  final Permissions permissions;

  /// A new login (temporary password) must set its own password first.
  final bool mustChangePassword;

  bool get readOnly => access == SubscriptionAccess.readOnly;
}
