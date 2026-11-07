import 'package:green_ledger_mobile/core/format/units.dart';
import 'package:green_ledger_mobile/core/result.dart';

/// An order line still to send. Quantities are 3-decimal strings; no rate (the godown
/// never sees prices).
class DispatchLine {
  const DispatchLine({
    required this.id,
    required this.product,
    required this.stockUnit,
    required this.ordered,
    required this.pending,
    this.packName,
    this.packSize,
    this.orderedPacks,
    this.dispatched = '0.000',
  });

  final String id;
  final String product;
  final String stockUnit;

  /// The pack ordered in, and a fixed pack's size (null for a variable pack).
  final String? packName;
  final String? packSize;
  final String? orderedPacks;
  final String ordered;
  final String dispatched;
  final String pending;

  bool get isPack => packName != null;
  bool get fixedPack => packSize != null;

  /// What was ordered: `5 Bag ≈ 250 kg`, `4 Crate = 100 kg`, `12 kg`; `… (180 kg left)`
  /// once part of it has gone.
  String get orderedText {
    final stock = '${plain(ordered)} $stockUnit';
    final base = orderedPacks == null ? stock : '${plain(orderedPacks!)} $packName ${fixedPack ? '=' : '≈'} $stock';
    return toMilli(dispatched) > 0 ? '$base (${plain(pending)} $stockUnit left)' : base;
  }
}

class DispatchOrder {
  const DispatchOrder({
    required this.id,
    required this.number,
    required this.date,
    required this.shop,
    required this.lines,
    this.agent,
    this.notes,
  });

  final String id;
  final String number;
  final String date;
  final String shop;

  /// The order's agent; null for counter orders.
  final String? agent;
  final String? notes;
  final List<DispatchLine> lines;
}

/// One line as sent: [quantity] in stock units, [complete] = "Close – no more" (a
/// short line otherwise stays open for the rest).
class SentLine {
  const SentLine({required this.lineId, required this.quantity, required this.complete, this.packCount});

  final String lineId;
  final String quantity;
  final String? packCount;
  final bool complete;
}

class DispatchResult {
  const DispatchResult({required this.billNumber, required this.orderDone});

  final String? billNumber;

  /// Nothing is left on the order.
  final bool orderDone;
}

abstract interface class DispatchRepository {
  /// Confirmed and partly dispatched orders, oldest first.
  Future<Result<List<DispatchOrder>>> toDispatch();

  /// Sends [lines] of [order]; [dispatchDate] is fixed when the entry starts. A network
  /// failure keeps a draft.
  Future<Result<DispatchResult>> dispatch({
    required DispatchOrder order,
    required List<SentLine> lines,
    required String dispatchDate,
    required String idempotencyKey,
    String vehicleNo = '',
  });
}

/// `250.000` → `250`.
String plain(String quantity) {
  final m = toMilli(quantity);
  final whole = m ~/ milli;
  final fraction = (m.abs() % milli).toString().padLeft(3, '0').replaceFirst(RegExp(r'0+$'), '');
  return fraction.isEmpty ? '$whole' : '$whole.$fraction';
}

/// A typed amount as a 3-decimal string; null when it isn't a positive one.
String? typedQuantity(String text) {
  final t = text.trim();
  if (!RegExp(r'^\d+(\.\d{1,3})?$').hasMatch(t)) return null;
  final m = toMilli(t);
  return m > 0 ? fromMilli(m) : null;
}

String packsTimesSize(String packs, String size) => fromMilli((toMilli(packs) * toMilli(size) + milli ~/ 2) ~/ milli);

/// The Load list (ux-design 4.4): what to load across all open orders, per product —
/// packs for lines not started, stock units for the rest. `Onion 23 Bag`, `Garlic 60 kg`.
List<String> loadList(List<DispatchOrder> orders) {
  final packs = <String, int>{};
  final loose = <String, int>{};
  final units = <String, String>{};
  for (final o in orders) {
    for (final l in o.lines) {
      if (l.orderedPacks != null && toMilli(l.dispatched) == 0) {
        final key = '${l.product}\u0000${l.packName}';
        packs[key] = (packs[key] ?? 0) + toMilli(l.orderedPacks!);
      } else {
        loose[l.product] = (loose[l.product] ?? 0) + toMilli(l.pending);
        units[l.product] = l.stockUnit;
      }
    }
  }
  final rows = <String, List<String>>{};
  for (final MapEntry(:key, :value) in packs.entries) {
    final [product, pack] = key.split('\u0000');
    rows.putIfAbsent(product, () => []).add('${plain(fromMilli(value))} $pack');
  }
  for (final MapEntry(:key, :value) in loose.entries) {
    rows.putIfAbsent(key, () => []).add('${plain(fromMilli(value))} ${units[key]}');
  }
  final names = rows.keys.toList()..sort();
  return [for (final n in names) '$n ${rows[n]!.join(' + ')}'];
}

/// Orders grouped by agent (counter orders last), each group oldest first.
Map<String, List<DispatchOrder>> byAgent(List<DispatchOrder> orders) {
  final groups = <String, List<DispatchOrder>>{};
  for (final o in orders) {
    groups.putIfAbsent(o.agent ?? 'No agent', () => []).add(o);
  }
  final keys = groups.keys.toList()..sort((a, b) => a == 'No agent' ? 1 : (b == 'No agent' ? -1 : a.compareTo(b)));
  return {for (final k in keys) k: groups[k]!};
}
