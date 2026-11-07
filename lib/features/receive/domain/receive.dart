import 'package:green_ledger_mobile/core/format/units.dart';
import 'package:green_ledger_mobile/core/result.dart';

class Supplier {
  const Supplier({required this.id, required this.name});

  final String id;
  final String name;
}

/// A pack a product arrives in: fixed (a 25 kg crate) or variable (a bag, weighed).
class ReceivePack {
  const ReceivePack({required this.id, required this.name, this.size});

  final String id;
  final String name;

  /// A fixed pack's size in stock units; null = variable.
  final String? size;

  bool get fixed => size != null;
}

class Grade {
  const Grade({required this.id, required this.name});

  final String id;
  final String name;
}

class ReceiveProduct {
  const ReceiveProduct({
    required this.id,
    required this.name,
    required this.stockUnit,
    this.packs = const [],
    this.grades = const [],
  });

  final String id;
  final String name;
  final String stockUnit;
  final List<ReceivePack> packs;
  final List<Grade> grades;
}

/// One item received. [net] is the stock-unit quantity; [gross]/[tare] are optional
/// weights (net = gross − tare). Quantities are 3-decimal strings. No rate (D3).
class ReceiveLine {
  const ReceiveLine({
    required this.product,
    required this.net,
    this.pack,
    this.packCount,
    this.gross,
    this.tare,
    this.grade,
  });

  final ReceiveProduct product;
  final ReceivePack? pack;
  final String? packCount;
  final String net;
  final String? gross;
  final String? tare;
  final Grade? grade;

  /// `Onion · 10 Bag · 500 kg · A`.
  String get describe => [
    product.name,
    if (pack != null && packCount != null) '${plainQuantity(packCount!)} ${pack!.name}',
    '${plainQuantity(net)} ${product.stockUnit}',
    ?grade?.name,
  ].join(' · ');
}

class SavedReceipt {
  const SavedReceipt({required this.number});

  final String number;
}

abstract interface class ReceiveRepository {
  /// Active suppliers, the ones received from most recently first.
  Future<Result<List<Supplier>>> suppliers();

  Future<Result<List<ReceiveProduct>>> products();

  /// Uploads the slip photo (if any), then posts the goods receipt. [receiptDate] is
  /// fixed when the entry starts; a network failure keeps a draft.
  Future<Result<SavedReceipt>> receive({
    required Supplier supplier,
    required String receiptDate,
    required List<ReceiveLine> lines,
    required String idempotencyKey,
    String? slipPhotoPath,
    String vehicleNo = '',
  });
}

/// `250.000` → `250`, `2.500` → `2.5`.
String plainQuantity(String quantity) {
  final m = toMilli(quantity);
  final whole = m ~/ milli;
  final fraction = (m % milli).toString().padLeft(3, '0').replaceFirst(RegExp(r'0+$'), '');
  return fraction.isEmpty ? '$whole' : '$whole.$fraction';
}

/// A typed amount (`5`, `2.5`) as a 3-decimal string, or null when it isn't one or is 0.
String? quantityOf(String text) {
  final t = text.trim();
  if (!RegExp(r'^\d+(\.\d{1,3})?$').hasMatch(t)) return null;
  final m = toMilli(t);
  return m > 0 ? fromMilli(m) : null;
}

/// Net from the weights: gross − tare (tare may be empty); null when not a positive
/// weight.
String? netFromWeights(String gross, String tare) {
  final g = quantityOf(gross);
  if (g == null) return null;
  final t = tare.trim().isEmpty ? 0 : (quantityOf(tare) == null ? null : toMilli(quantityOf(tare)!));
  if (t == null) return null;
  final net = toMilli(g) - t;
  return net > 0 ? fromMilli(net) : null;
}

/// A fixed pack's net: packs × size.
String fixedNet(String packCount, String size) => fromMilli((toMilli(packCount) * toMilli(size) + milli ~/ 2) ~/ milli);

/// Suppliers in [recentIds] order first, then the rest by name.
List<Supplier> recentFirst(List<Supplier> suppliers, List<String> recentIds) {
  final byId = {for (final s in suppliers) s.id: s};
  final recent = [for (final id in recentIds.toSet()) ?byId[id]];
  final rest = [
    for (final s in suppliers)
      if (!recentIds.contains(s.id)) s,
  ]..sort((a, b) => a.name.compareTo(b.name));
  return [...recent, ...rest];
}
