import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/stock/domain/stock.dart';

final class StockState {
  const StockState({this.items = const [], this.loading = true, this.failure, this.query = '', this.lowOnly = false});

  final List<StockItem> items;
  final bool loading;
  final AppFailure? failure;
  final String query;
  final bool lowOnly;

  List<StockItem> get shown {
    final q = query.trim().toLowerCase();
    return [
      for (final i in items)
        if ((!lowOnly || i.lowStock) &&
            (q.isEmpty || i.name.toLowerCase().contains(q) || (i.nameMl?.contains(q) ?? false)))
          i,
    ];
  }

  StockState copyWith({
    List<StockItem>? items,
    bool? loading,
    AppFailure? Function()? failure,
    String? query,
    bool? lowOnly,
  }) => StockState(
    items: items ?? this.items,
    loading: loading ?? this.loading,
    failure: failure == null ? this.failure : failure(),
    query: query ?? this.query,
    lowOnly: lowOnly ?? this.lowOnly,
  );
}

/// The Stock tab: on hand by product, searchable, low stock first on request.
class StockCubit extends Cubit<StockState> {
  StockCubit(this._repository) : super(const StockState());

  final StockRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(loading: true, failure: () => null));
    switch (await _repository.onHand()) {
      case Ok(:final value):
        emit(state.copyWith(loading: false, items: value));
      case Err(:final failure):
        emit(state.copyWith(loading: false, failure: () => failure));
    }
  }

  void search(String query) => emit(state.copyWith(query: query));

  void toggleLowOnly() => emit(state.copyWith(lowOnly: !state.lowOnly));
}
