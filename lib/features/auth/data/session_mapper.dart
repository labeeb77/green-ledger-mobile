import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/permissions/permissions.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';

/// `GET /auth/me` → [Session].
Session sessionFromMe(api.MeDtoOutput me) => Session(
  user: SessionUser(
    id: me.user.id,
    name: me.user.name,
    phone: me.user.phone,
    role: switch (me.user.role) {
      api.Role2.owner => Role.owner,
      api.Role2.manager => Role.manager,
      api.Role2.billing => Role.billing,
      api.Role2.godown => Role.godown,
      _ => Role.agent,
    },
  ),
  businessName: me.business?.name ?? '',
  access: switch (me.subscription?.access) {
    api.Access.readOnly => SubscriptionAccess.readOnly,
    api.Access.blocked => SubscriptionAccess.blocked,
    _ => SubscriptionAccess.full,
  },
  permissions: Permissions({for (final entry in me.permissions.entries) entry.key: ?_level(entry.value)}),
  mustChangePassword: me.mustChangePassword,
);

PermissionLevel? _level(api.PermissionsPermissions value) => switch (value) {
  api.PermissionsPermissions.allow => PermissionLevel.allow,
  api.PermissionsPermissions.approval => PermissionLevel.approval,
  api.PermissionsPermissions.view => PermissionLevel.view,
  api.PermissionsPermissions.own => PermissionLevel.own,
  api.PermissionsPermissions.$unknown => null,
};
