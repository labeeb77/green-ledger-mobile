import 'package:green_ledger_mobile/core/permissions/permissions.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';

const PermissionLevel _a = PermissionLevel.allow;
const PermissionLevel _v = PermissionLevel.view;
const PermissionLevel _o = PermissionLevel.own;
const PermissionLevel _ap = PermissionLevel.approval;

/// Role templates as in the backend permission matrix (the parts the app reads).
Session sessionFor(Role role, {bool mustChangePassword = false, SubscriptionAccess access = SubscriptionAccess.full}) {
  final levels = switch (role) {
    Role.owner => {
      'approvals.decide': _a,
      'customers': _a,
      'collections': _a,
      'visits': _a,
      'cash_handovers.confirm': _a,
      'goods_receipts': _a,
      'products': _a,
      'sales': _a,
    },
    Role.manager => {
      'approvals.decide': _a,
      'customers': _a,
      'collections': _a,
      'visits': _a,
      'cash_handovers.confirm': _a,
      'goods_receipts': _a,
      'products': _a,
      'sales': _a,
    },
    Role.billing => {'customers': _a, 'collections': _a, 'sales': _a, 'products': _v},
    Role.godown => {'goods_receipts': _a, 'products': _v, 'suppliers': _v},
    Role.agent => {'customers': _ap, 'collections': _o, 'visits': _o, 'sales': _o, 'products': _v},
  };
  return Session(
    user: SessionUser(id: 'u-${role.name}', name: 'Ravi Kumar', phone: '9000000005', role: role),
    businessName: 'Demo Traders',
    access: access,
    permissions: Permissions(levels),
    mustChangePassword: mustChangePassword,
  );
}
