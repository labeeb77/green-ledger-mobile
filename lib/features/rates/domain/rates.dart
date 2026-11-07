import 'package:green_ledger_mobile/core/result.dart';

/// One product unit's rate for the day, with the most recent earlier rate ("yesterday",
/// shown in grey). Rates are paise per [unitLabel].
class RateRow {
  const RateRow({
    required this.productId,
    required this.productName,
    required this.unitLabel,
    this.packUnitId,
    this.rate,
    this.previousRate,
    this.previousDate,
  });

  final String productId;
  final String productName;
  final String? packUnitId;
  final String unitLabel;
  final int? rate;
  final int? previousRate;
  final String? previousDate;

  /// Identifies the row among a day's rates.
  String get key => '$productId/${packUnitId ?? ''}';
}

class DailyRateList {
  const DailyRateList({required this.date, required this.rows});

  /// `2026-11-07`.
  final String date;
  final List<RateRow> rows;
}

/// A rate to save for [RateRow.key].
typedef RateChange = ({String productId, String? packUnitId, int rate});

abstract interface class RatesRepository {
  /// Today's rates (the server's Indian date).
  Future<Result<DailyRateList>> today();

  /// Saves [changes] for [date] and returns the day as stored.
  Future<Result<DailyRateList>> save(String date, List<RateChange> changes);
}
