import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/search/domain/search.dart';

sealed class SearchState {
  const SearchState();
}

/// Fewer than [SearchCubit.minLength] characters typed.
final class SearchIdle extends SearchState {
  const SearchIdle();
}

final class SearchLoading extends SearchState {
  const SearchLoading(this.text);

  final String text;
}

final class SearchDone extends SearchState {
  const SearchDone(this.text, this.results);

  final String text;
  final SearchResults results;
}

final class SearchFailed extends SearchState {
  const SearchFailed(this.text, this.failure);

  final String text;
  final AppFailure failure;
}

/// Searches as the user types: waits [debounce] after the last key, needs 2 to 60
/// characters (the server's limits) and ignores answers to older text.
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._repository, {this.debounce = const Duration(milliseconds: 300)}) : super(const SearchIdle());

  static const minLength = 2;
  static const maxLength = 60;

  final SearchRepository _repository;
  final Duration debounce;
  Timer? _timer;
  String _text = '';

  void changed(String raw) {
    final text = raw.trim();
    if (text == _text) return;
    _text = text;
    _timer?.cancel();
    if (text.length < minLength) return emit(const SearchIdle());
    emit(SearchLoading(text));
    _timer = Timer(debounce, () => unawaited(_run(text)));
  }

  /// TRY AGAIN after a failure.
  Future<void> retry() => _text.length < minLength ? Future.value() : _run(_text);

  Future<void> _run(String text) async {
    final query = text.length > maxLength ? text.substring(0, maxLength) : text;
    if (state is! SearchLoading) emit(SearchLoading(text));
    final result = await _repository.search(query);
    if (isClosed || text != _text) return;
    switch (result) {
      case Ok(:final value):
        emit(SearchDone(text, value));
      case Err(:final failure):
        emit(SearchFailed(text, failure));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
