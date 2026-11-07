import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/shops/data/shop_mapper.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';

class ShopsRepositoryImpl implements ShopsRepository {
  ShopsRepositoryImpl({required this._customers, required this._sales, required this._collections});

  final api.CustomersClient _customers;
  final api.SalesClient _sales;
  final api.CollectionsClient _collections;

  /// Bills and payments shown on the shop detail.
  static const recent = 10;

  @override
  Future<Result<List<Shop>>> shops() async {
    try {
      final rows = await _customers.customersControllerList(status: api.Status2.active);
      return Ok([for (final c in rows) shopFromDto(c)]);
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<Shop>> shop(String id) async {
    try {
      return Ok(shopFromDto(await _customers.customersControllerGet(id: id)));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<ShopActivity>> activity(String id) async {
    try {
      final pages = await Future.wait<Object>([
        _sales.salesBillsControllerList(customerId: id, limit: recent),
        _collections.customerReceiptsControllerList(customerId: id, limit: recent),
      ]);
      final bills = pages[0] as api.SalesBillSummaryPageDtoOutput;
      final payments = pages[1] as api.CustomerReceiptPageDtoOutput;
      return Ok(
        ShopActivity(
          bills: [for (final b in bills.items) billFromDto(b)],
          payments: [for (final r in payments.items) paymentFromDto(r)],
        ),
      );
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}
