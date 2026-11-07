import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';

/// What the godown found (ux-design 4.7): only saleable stock goes back on hand.
enum InspectionResult {
  saleable('Saleable'),
  damaged('Damaged'),
  disposed('Disposed');

  InspectionResult(this.label);

  final String label;
}

/// A returned line still to inspect. No rate or amount.
class ReturnLine {
  const ReturnLine({
    required this.id,
    required this.product,
    required this.stockUnit,
    required this.quantity,
    this.packName,
    this.packCount,
  });

  final String id;
  final String product;
  final String stockUnit;
  final String quantity;
  final String? packName;
  final String? packCount;

  /// `2 Crate · 50 kg`, `12 kg`.
  String get describe => [
    if (packName != null && packCount != null) '${formatQuantity(packCount!)} $packName',
    formatQuantity(quantity, stockUnit),
  ].join(' · ');
}

class ReturnToInspect {
  const ReturnToInspect({
    required this.id,
    required this.number,
    required this.date,
    required this.shop,
    required this.lines,
    this.notes,
  });

  final String id;
  final String number;
  final String date;
  final String shop;
  final String? notes;
  final List<ReturnLine> lines;
}

abstract interface class ReturnsRepository {
  /// Posted returns with lines still to inspect, oldest first.
  Future<Result<List<ReturnToInspect>>> toInspect();

  /// Records [results] (line id → result); lines left out stay pending. A network failure
  /// keeps a draft.
  Future<Result<void>> inspect({
    required ReturnToInspect ret,
    required Map<String, InspectionResult> results,
    required String idempotencyKey,
  });
}
