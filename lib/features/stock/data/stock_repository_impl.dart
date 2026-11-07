import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/stock/domain/stock.dart';

class StockRepositoryImpl implements StockRepository {
  StockRepositoryImpl(this._client);

  final api.StockClient _client;

  @override
  Future<Result<List<StockItem>>> onHand() async {
    try {
      final rows = await _client.stockControllerOnHand();
      return Ok(
        [
          for (final r in rows)
            if (r.active) stockItemFromDto(r),
        ]..sort((a, b) => a.name.compareTo(b.name)),
      );
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

StockItem stockItemFromDto(api.StockRowDtoOutput r) => StockItem(
  productId: r.productId,
  name: r.name,
  nameMl: r.nameMl,
  unit: r.stockUnit,
  quantity: r.quantity,
  packs: [for (final p in r.packs) PackCount(name: p.name, count: p.count)],
  lowStock: r.lowStock,
  wastageToday: r.wastageToday,
);
