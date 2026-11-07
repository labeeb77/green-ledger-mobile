import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';

/// A pack count in stock, e.g. 7 Bag.
class PackCount {
  const PackCount({required this.name, required this.count});

  final String name;
  final String count;
}

/// Stock on hand of one product (ux-design 4.7): quantity and packs, never cost.
class StockItem {
  const StockItem({
    required this.productId,
    required this.name,
    required this.unit,
    required this.quantity,
    required this.packs,
    required this.lowStock,
    required this.wastageToday,
    this.nameMl,
  });

  final String productId;
  final String name;
  final String? nameMl;
  final String unit;
  final String quantity;
  final List<PackCount> packs;
  final bool lowStock;
  final String wastageToday;

  /// `340 kg (7 Bag)`; negative stock (D8) shows as it is.
  String get onHand {
    final q = formatQuantity(quantity, unit);
    if (packs.isEmpty) return q;
    return '$q (${packs.map((p) => '${formatQuantity(p.count)} ${p.name}').join(', ')})';
  }

  bool get negative => quantity.startsWith('-');
}

abstract interface class StockRepository {
  /// Active products, by name.
  Future<Result<List<StockItem>>> onHand();
}
