import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';

sealed class ShopDetailState {
  const ShopDetailState();
}

final class ShopDetailLoading extends ShopDetailState {
  const ShopDetailLoading();
}

final class ShopDetailLoaded extends ShopDetailState {
  const ShopDetailLoaded(this.shop, this.activity);

  final Shop shop;
  final ShopActivity activity;
}

final class ShopDetailFailed extends ShopDetailState {
  const ShopDetailFailed(this.failure);

  final AppFailure failure;
}

/// One shop: balances, last visit, recent bills and payments.
class ShopDetailCubit extends Cubit<ShopDetailState> {
  ShopDetailCubit(this._repository, this.shopId) : super(const ShopDetailLoading());

  final ShopsRepository _repository;
  final String shopId;

  Future<void> load() async {
    if (state is! ShopDetailLoaded) emit(const ShopDetailLoading());
    final (shop, activity) = await (_repository.shop(shopId), _repository.activity(shopId)).wait;
    switch ((shop, activity)) {
      case (Ok(value: final s), Ok(value: final a)):
        emit(ShopDetailLoaded(s, a));
      case (Err(:final failure), _) || (_, Err(:final failure)):
        if (state is! ShopDetailLoaded) emit(ShopDetailFailed(failure));
    }
  }
}
