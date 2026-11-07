import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';

sealed class ShopsState {
  const ShopsState();
}

final class ShopsLoading extends ShopsState {
  const ShopsLoading();
}

final class ShopsLoaded extends ShopsState {
  const ShopsLoaded(this.shops, {this.query = '', this.updatedAt});

  final List<Shop> shops;
  final String query;

  /// Set when the list is the copy kept on the phone ("Updated 10:42").
  final DateTime? updatedAt;

  /// Shops matching [query] (name, area or phone), grouped by area.
  List<AreaGroup> get groups {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return groupByArea(shops);
    return groupByArea([
      for (final s in shops)
        if (s.name.toLowerCase().contains(q) ||
            (s.area?.toLowerCase().contains(q) ?? false) ||
            (s.phone?.contains(q) ?? false))
          s,
    ]);
  }
}

final class ShopsFailed extends ShopsState {
  const ShopsFailed(this.failure);

  final AppFailure failure;
}

/// The Shops tab: the user's shops grouped by area, filtered on the phone.
class ShopsCubit extends Cubit<ShopsState> {
  ShopsCubit(this._repository) : super(const ShopsLoading());

  final ShopsRepository _repository;

  /// Loads the list; a refresh keeps the current list on screen until it's back.
  Future<void> load() async {
    final previous = state;
    if (previous is! ShopsLoaded) emit(const ShopsLoading());
    switch (await _repository.shops()) {
      case Ok(:final value):
        emit(
          ShopsLoaded(value.shops, query: previous is ShopsLoaded ? previous.query : '', updatedAt: value.updatedAt),
        );
      case Err(:final failure):
        if (previous is! ShopsLoaded) emit(ShopsFailed(failure));
    }
  }

  void search(String query) {
    if (state case ShopsLoaded(:final shops, :final updatedAt)) {
      emit(ShopsLoaded(shops, query: query, updatedAt: updatedAt));
    }
  }
}
