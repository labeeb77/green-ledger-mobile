/// A product at or below its low-stock level. Quantities are 3-decimal strings.
class LowStockItem {
  const LowStockItem({required this.name, required this.unit, required this.quantity, required this.level});

  final String name;
  final String unit;
  final String quantity;
  final String level;
}

/// The godown's Home (ux-design section 3): what to dispatch, what arrived, what is low
/// and today's wastage. No prices.
class GodownHome {
  const GodownHome({
    required this.toDispatch,
    required this.arrivalsToday,
    required this.lowStock,
    required this.wastageToday,
    required this.wastagePending,
    this.returnsToInspect,
  });

  /// Orders waiting to be dispatched.
  final int toDispatch;

  /// Goods receipts posted today.
  final int arrivalsToday;
  final List<LowStockItem> lowStock;

  /// Wasted today per stock unit, e.g. `{'kg': '12.000'}`.
  final Map<String, String> wastageToday;

  /// Wastage entries waiting for approval.
  final int wastagePending;

  /// Returns waiting for inspection; null when the user can't inspect.
  final int? returnsToInspect;
}
