import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';

/// Every tab the app can show. The bottom bar shows at most 4 of them, picked from the
/// user's permissions, not a fixed role (ux-design section 3).
enum AppTab {
  home('/home', 'Home', Icons.home_outlined, Icons.home),
  shops('/shops', 'Shops', Icons.storefront_outlined, Icons.storefront),
  customers('/customers', 'Customers', Icons.people_outline, Icons.people),
  cash('/cash', 'Cash', Icons.account_balance_wallet_outlined, Icons.account_balance_wallet),
  approvals('/approvals', 'Approvals', Icons.fact_check_outlined, Icons.fact_check),
  stock('/stock', 'Stock', Icons.inventory_2_outlined, Icons.inventory_2),
  more('/more', 'More', Icons.menu, Icons.menu);

  AppTab(this.path, this.label, this.icon, this.selectedIcon);

  final String path;
  final String label;
  final IconData icon;
  final IconData selectedIcon;
}

/// Tabs for [session]: Home, up to two work tabs in a fixed priority, then More.
/// Billing staff use the admin panel only and get no tabs.
List<AppTab> tabsFor(Session session) {
  final p = session.permissions;
  if (session.user.role == Role.billing) return const [];
  final work = <AppTab>[
    if (p.canWrite('approvals.decide')) AppTab.approvals,
    if (session.user.role == Role.agent) ...[
      if (p.canRead('collections')) AppTab.shops,
      if (p.canWrite('collections')) AppTab.cash,
    ] else if (p.canRead('customers'))
      AppTab.customers,
    if (p.canWrite('goods_receipts')) AppTab.stock,
  ];
  return [AppTab.home, ...work.take(2), AppTab.more];
}

/// A Home card, in the fixed order Approvals → Cash → Agent → Godown → Rates.
enum HomeCard { approvals, cash, agent, godown, rates }

List<HomeCard> homeCardsFor(Session session) {
  final p = session.permissions;
  final role = session.user.role;
  return [
    if (p.canWrite('approvals.decide')) HomeCard.approvals,
    if (p.canWrite('cash_handovers.confirm')) HomeCard.cash,
    if (role == Role.agent || (p.canWrite('collections') && role != Role.billing)) HomeCard.agent,
    if (p.canWrite('goods_receipts')) HomeCard.godown,
    if (p.canWrite('products') && (role == Role.owner || role == Role.manager)) HomeCard.rates,
  ];
}
