import 'package:green_ledger_mobile/core/format/units.dart';
import 'package:green_ledger_mobile/core/result.dart';

/// The shop an order is for, with what the credit hint needs (display only).
class OrderTarget {
  const OrderTarget({
    required this.customerId,
    required this.name,
    required this.outstanding,
    required this.creditLimit,
  });

  final String customerId;
  final String name;
  final int outstanding;

  /// 0 = cash only.
  final int creditLimit;

  int get creditLeft => creditLimit - outstanding < 0 ? 0 : creditLimit - outstanding;
}

/// How a product is ordered: its stock unit (kg, piece) or a pack. A fixed pack has a
/// size in stock units (a 25 kg crate); a variable pack (a bag) is weighed at dispatch.
class OrderUnit {
  const OrderUnit({required this.name, this.packUnitId, this.size, this.variable = false});

  /// The stock unit (`kg`) or the pack's name (`Bag`).
  final String name;

  /// null for the stock unit.
  final String? packUnitId;

  /// A fixed pack's size in stock units (3-decimal string).
  final String? size;
  final bool variable;

  bool get isPack => packUnitId != null;
  bool get fixed => isPack && !variable;
}

class OrderProduct {
  const OrderProduct({required this.id, required this.name, required this.stockUnit, required this.units});

  final String id;
  final String name;

  /// `kg` or `piece`.
  final String stockUnit;

  /// The stock unit first, then active packs.
  final List<OrderUnit> units;

  OrderUnit unitFor(String? packUnitId) =>
      units.firstWhere((u) => u.packUnitId == packUnitId, orElse: () => units.first);
}

enum RatePer { stockUnit, pack }

/// The rate the server would use (customer rate → price group → daily rate), in paise
/// per [ratePer]; [rate] null when the product has no rate yet.
class Quote {
  const Quote({required this.rate, required this.ratePer, this.minimumRate, this.belowMinimum = false});

  final int? rate;
  final RatePer ratePer;
  final int? minimumRate;
  final bool belowMinimum;
}

/// One line of an order. [packCount] is set for packs; [quantity] is the stock-unit
/// amount (for a fixed pack: packs × size; for a variable pack: the estimate).
class OrderLine {
  const OrderLine({
    required this.product,
    required this.unit,
    required this.quantity,
    required this.rate,
    required this.ratePer,
    this.packCount,
    this.minimumRate,
  });

  final OrderProduct product;
  final OrderUnit unit;
  final String? packCount;
  final String quantity;
  final int rate;
  final RatePer ratePer;
  final int? minimumRate;

  /// ≈ amount in paise (the bill uses the dispatched weight, D4).
  int get amount =>
      ratePer == RatePer.pack && packCount != null ? lineAmount(packCount!, rate) : lineAmount(quantity, rate);

  bool get belowMinimum => minimumRate != null && rate < minimumRate!;

  /// `5 Bag ≈ 250 kg`, `4 Crate = 100 kg`, `12 kg`.
  String get describe {
    String q(String v) => _plain(v);
    final stock = '${q(quantity)} ${product.stockUnit}';
    if (packCount == null) return stock;
    return '${q(packCount!)} ${unit.name} ${unit.fixed ? '=' : '≈'} $stock';
  }
}

/// A past order line, for Recent, Repeat and the unit the shop used last.
class PastLine {
  const PastLine({required this.productId, required this.quantity, this.packUnitId, this.packCount});

  final String productId;
  final String? packUnitId;
  final String? packCount;
  final String quantity;
}

class PastOrder {
  const PastOrder({required this.date, required this.lines});

  final String date;
  final List<PastLine> lines;
}

class PlacedOrder {
  const PlacedOrder({required this.number, required this.waiting, required this.total});

  final String number;

  /// Waiting for approval (over the credit limit or below the minimum rate).
  final bool waiting;
  final int total;
}

abstract interface class OrdersRepository {
  /// Active products for ordering.
  Future<Result<List<OrderProduct>>> products();

  Future<Result<Quote>> quote({required String productId, required String customerId, String? packUnitId});

  /// The shop's latest orders, newest first (cancelled and rejected left out).
  Future<Result<List<PastOrder>>> history(String customerId);

  /// The user's own latest orders across shops, for Recent when the shop has none.
  Future<Result<List<PastOrder>>> myOrders();

  /// Places the order with [idempotencyKey]; [orderDate] is fixed when the order starts
  /// so a later SEND AGAIN sends the same request. A network failure keeps a draft.
  Future<Result<PlacedOrder>> place({
    required String customerId,
    required String shopName,
    required String orderDate,
    required List<OrderLine> lines,
    required String idempotencyKey,
    String note = '',
  });
}

/// Quick notes (ux-design 4.2), joined into the order's `notes` with any free text.
const orderNoteChips = ['Morning delivery', 'Small size', 'Call before'];

/// Paise for [quantity] (3-decimal) at [rate] paise each, rounded half up like the server.
int lineAmount(String quantity, int rate) {
  final product = toMilli(quantity) * rate;
  return (product + (product >= 0 ? milli ~/ 2 : -(milli ~/ 2))) ~/ milli;
}

/// `250.000` → `250`, `2.500` → `2.5`.
String _plain(String quantity) {
  final m = toMilli(quantity);
  final whole = m ~/ milli;
  final fraction = (m % milli).toString().padLeft(3, '0').replaceFirst(RegExp(r'0+$'), '');
  return fraction.isEmpty ? '$whole' : '$whole.$fraction';
}

/// A typed amount (`5`, `2.5`) as a 3-decimal string, or null when it isn't one or is 0.
String? quantityFrom(String text) {
  final t = text.trim();
  if (!RegExp(r'^\d+(\.\d{1,3})?$').hasMatch(t)) return null;
  final m = toMilli(t);
  return m > 0 ? fromMilli(m) : null;
}

/// Packs × size for a fixed pack.
String packsTimes(String packCount, String size) =>
    fromMilli((toMilli(packCount) * toMilli(size) + milli ~/ 2) ~/ milli);

/// The stock-unit estimate per variable pack from the shop's last order of it
/// (quantity ÷ packs), or null with no history.
String? perPackEstimate(List<PastOrder> history, String productId, String packUnitId) {
  for (final order in history) {
    for (final l in order.lines) {
      if (l.productId == productId && l.packUnitId == packUnitId && l.packCount != null) {
        final packs = toMilli(l.packCount!);
        if (packs > 0) return fromMilli((toMilli(l.quantity) * milli + packs ~/ 2) ~/ packs);
      }
    }
  }
  return null;
}

/// The unit the shop used last for [product], else the product's first pack, else the
/// stock unit (ux-design 4.2).
OrderUnit defaultUnit(OrderProduct product, List<PastOrder> history) {
  for (final order in history) {
    for (final l in order.lines) {
      if (l.productId == product.id) return product.unitFor(l.packUnitId);
    }
  }
  return product.units.firstWhere((u) => u.isPack, orElse: () => product.units.first);
}

/// Recent products: this shop's last orders, else the user's most ordered (up to [max]).
List<String> recentProductIds(List<PastOrder> shop, List<PastOrder> mine, {int max = 6}) {
  final ids = <String>[
    for (final o in shop)
      for (final l in o.lines) l.productId,
  ];
  if (ids.isNotEmpty) return ids.toSet().take(max).toList();
  final counts = <String, int>{};
  for (final o in mine) {
    for (final l in o.lines) {
      counts[l.productId] = (counts[l.productId] ?? 0) + 1;
    }
  }
  final sorted = counts.keys.toList()..sort((a, b) => counts[b]!.compareTo(counts[a]!));
  return sorted.take(max).toList();
}

/// How far over the credit limit this order takes the shop (paise), 0 when within it.
/// Display only: the server decides.
int overLimitByFor({required int outstanding, required int creditLimit, required int total}) {
  final over = outstanding + total - creditLimit;
  return over > 0 ? over : 0;
}
