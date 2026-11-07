/// How a shop visit went (visit notes).
enum VisitOutcome {
  paid('Paid'),
  promised('Promised'),
  notAvailable('Not available'),
  shopClosed('Shop closed');

  VisitOutcome(this.label);

  final String label;
}

/// The latest visit to a shop.
class LastVisit {
  const LastVisit({required this.date, required this.outcome, required this.byName});

  /// ISO business date (`2026-11-07`).
  final String date;
  final VisitOutcome outcome;
  final String byName;
}

/// A customer ("shop") with its balances, all computed by the server.
class Shop {
  const Shop({
    required this.id,
    required this.name,
    required this.outstanding,
    required this.overdue,
    required this.creditLimit,
    this.area,
    this.phone,
    this.whatsapp,
    this.lastVisit,
  });

  final String id;
  final String name;
  final String? area;
  final String? phone;

  /// Only when it differs from [phone].
  final String? whatsapp;

  /// Paise owed now; part of it past its credit days.
  final int outstanding;
  final int overdue;

  /// 0 = cash only.
  final int creditLimit;
  final LastVisit? lastVisit;

  /// The number to open in WhatsApp: its own, else the phone.
  String? get whatsappNumber => whatsapp ?? phone;

  bool get cashOnly => creditLimit == 0;

  /// What the shop may still take on credit (display only; the server checks limits).
  int get creditLeft => creditLimit - outstanding < 0 ? 0 : creditLimit - outstanding;
}

/// Shops of one area, for the Shops tab.
/// The shops list; [updatedAt] is set when it is the copy kept on the phone (offline).
class ShopList {
  const ShopList(this.shops, {this.updatedAt});

  final List<Shop> shops;
  final DateTime? updatedAt;
}

class AreaGroup {
  const AreaGroup(this.area, this.shops);

  /// Null for shops with no area.
  final String? area;
  final List<Shop> shops;
}

/// Groups [shops] by area, areas A–Z with "no area" last; shops keep their order.
List<AreaGroup> groupByArea(List<Shop> shops) {
  final byArea = <String?, List<Shop>>{};
  for (final shop in shops) {
    final area = shop.area?.trim();
    (byArea[area == null || area.isEmpty ? null : area] ??= []).add(shop);
  }
  final areas = byArea.keys.whereType<String>().toList()..sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
  return [
    for (final area in areas) AreaGroup(area, byArea[area]!),
    if (byArea[null] case final rest?) AreaGroup(null, rest),
  ];
}

enum BillState { paid, due, overdue, waiting, cancelled }

/// A recent bill on the shop detail.
class ShopBill {
  const ShopBill({
    required this.id,
    required this.billDate,
    required this.total,
    required this.open,
    required this.state,
    this.number,
  });

  final String id;

  /// Null while the bill waits for approval.
  final String? number;
  final String billDate;
  final int total;
  final int open;
  final BillState state;
}

/// A recent payment (receipt) on the shop detail.
class ShopPayment {
  const ShopPayment({
    required this.id,
    required this.number,
    required this.date,
    required this.total,
    required this.cancelled,
  });

  final String id;
  final String number;
  final String date;
  final int total;
  final bool cancelled;
}

/// The shop's latest bills and payments, newest first.
class ShopActivity {
  const ShopActivity({required this.bills, required this.payments});

  final List<ShopBill> bills;
  final List<ShopPayment> payments;
}
