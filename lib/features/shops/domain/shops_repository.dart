import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';

/// The user's shops. The server scopes them: agents get only their assigned shops.
abstract interface class ShopsRepository {
  Future<Result<List<Shop>>> shops();

  Future<Result<Shop>> shop(String id);

  /// The latest bills and payments of a shop.
  Future<Result<ShopActivity>> activity(String id);
}
