import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/rates/domain/rates.dart';

class RatesRepositoryImpl implements RatesRepository {
  RatesRepositoryImpl(this._client);

  final api.PricingClient _client;

  @override
  Future<Result<DailyRateList>> today() async {
    try {
      return Ok(dailyRatesFromDto(await _client.pricingControllerDailyRates()));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<DailyRateList>> save(String date, List<RateChange> changes) async {
    try {
      final out = await _client.pricingControllerSetDailyRates(
        body: api.SetDailyRatesDto(
          date: date,
          rates: [for (final c in changes) api.Rates(productId: c.productId, packUnitId: c.packUnitId, rate: c.rate)],
        ),
      );
      return Ok(dailyRatesFromDto(out));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

DailyRateList dailyRatesFromDto(api.DailyRatesDtoOutput d) => DailyRateList(
  date: d.date,
  rows: [
    for (final r in d.rows)
      RateRow(
        productId: r.productId,
        productName: r.productName,
        packUnitId: r.packUnitId,
        unitLabel: r.unitLabel,
        rate: r.rate,
        previousRate: r.previous?.rate,
        previousDate: r.previous?.date,
      ),
  ],
);
