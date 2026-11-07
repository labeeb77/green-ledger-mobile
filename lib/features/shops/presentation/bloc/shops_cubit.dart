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
  const ShopsLoaded(this.shops, {this.query = '', this.updatedAt, this.myUserId, this.mineOnly = false});

  final List<Shop> shops;
  final String query;

  /// The signed-in user, for "My shops" (owners and managers on the Customers tab).
  final String? myUserId;
  final bool mineOnly;

  /// Some shops are assigned to the user, so "My shops / All" makes sense.
  bool get hasOwnShops => myUserId != null && shops.any((s) => s.agentId == myUserId);

  /// Set when the list is the copy kept on the phone ("Updated 10:42").
  final DateTime? updatedAt;

  /// Shops matching [query] (name, area or phone), grouped by area.
  List<AreaGroup> get groups {
    final q = query.trim().toLowerCase();
    final shown = mineOnly
        ? [
            for (final s in shops)
              if (s.agentId == myUserId) s,
          ]
        : shops;
    if (q.isEmpty) return groupByArea(shown);
    return groupByArea([
      for (final s in shown)
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
  ShopsCubit(this._repository, {this.myUserId}) : super(const ShopsLoading());

  final ShopsRepository _repository;

  /// Set on the Customers tab, where "My shops / All" is offered.
  final String? myUserId;

  /// Loads the list; a refresh keeps the current list on screen until it's back.
  Future<void> load() async {
    final previous = state;
    if (previous is! ShopsLoaded) emit(const ShopsLoading());
    switch (await _repository.shops()) {
      case Ok(:final value):
        emit(
          ShopsLoaded(
            value.shops,
            query: previous is ShopsLoaded ? previous.query : '',
            updatedAt: value.updatedAt,
            myUserId: myUserId,
            mineOnly: previous is ShopsLoaded && previous.mineOnly,
          ),
        );
      case Err(:final failure):
        if (previous is! ShopsLoaded) emit(ShopsFailed(failure));
    }
  }

  void search(String query) {
    if (state case final ShopsLoaded s) {
      emit(ShopsLoaded(s.shops, query: query, updatedAt: s.updatedAt, myUserId: myUserId, mineOnly: s.mineOnly));
    }
  }

  /// "My shops" (true) or "All".
  void showMine({required bool mine}) {
    if (state case final ShopsLoaded s) {
      emit(ShopsLoaded(s.shops, query: s.query, updatedAt: s.updatedAt, myUserId: myUserId, mineOnly: mine));
    }
  }
}
