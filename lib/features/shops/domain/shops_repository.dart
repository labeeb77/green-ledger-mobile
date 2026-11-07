import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';

/// The user's shops. The server scopes them: agents get only their assigned shops.
abstract interface class ShopsRepository {
  /// Offline, the last loaded list (with when it was loaded) instead of a failure.
  Future<Result<ShopList>> shops();

  Future<Result<Shop>> shop(String id);

  /// The latest bills and payments of a shop.
  Future<Result<ShopActivity>> activity(String id);
}
