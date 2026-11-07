import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/rates/domain/rates.dart';

sealed class RatesState {
  const RatesState();
}

final class RatesLoading extends RatesState {
  const RatesLoading();
}

final class RatesFailed extends RatesState {
  const RatesFailed(this.failure);

  final AppFailure failure;
}

/// The day's rates with the user's unsaved [edits] (by [RateRow.key]); a changed row
/// stays highlighted until saved.
final class RatesLoaded extends RatesState {
  const RatesLoaded(this.list, {this.edits = const {}, this.saving = false, this.saveFailure, this.saved = false});

  final DailyRateList list;
  final Map<String, int> edits;
  final bool saving;
  final AppFailure? saveFailure;

  /// The last save went through (for the "Rates saved" message).
  final bool saved;

  int? rateOf(RateRow row) => edits[row.key] ?? row.rate;

  bool isChanged(RateRow row) => edits.containsKey(row.key);

  /// Products with an earlier rate that today's list doesn't match yet.
  bool get canCopyYesterday =>
      list.rows.any((r) => r.previousRate != null && r.previousRate! > 0 && rateOf(r) != r.previousRate);

  RatesLoaded copyWith({Map<String, int>? edits, bool? saving, AppFailure? saveFailure, bool saved = false}) =>
      RatesLoaded(
        list,
        edits: edits ?? this.edits,
        saving: saving ?? this.saving,
        saveFailure: saveFailure,
        saved: saved,
      );
}

class RatesCubit extends Cubit<RatesState> {
  RatesCubit(this._repository) : super(const RatesLoading());

  final RatesRepository _repository;

  Future<void> load() async {
    emit(const RatesLoading());
    switch (await _repository.today()) {
      case Ok(:final value):
        emit(RatesLoaded(value));
      case Err(:final failure):
        emit(RatesFailed(failure));
    }
  }

  /// A typed rate; typing the stored rate back (or clearing it) is no change.
  void setRate(RateRow row, int paise) {
    final s = state;
    if (s is! RatesLoaded || s.saving) return;
    final edits = {...s.edits};
    if (paise <= 0 || paise == row.rate) {
      edits.remove(row.key);
    } else {
      edits[row.key] = paise;
    }
    emit(s.copyWith(edits: edits));
  }

  /// "Copy yesterday's rates": every row with an earlier rate takes it, unless the user
  /// already typed one.
  void copyYesterday() {
    final s = state;
    if (s is! RatesLoaded || s.saving) return;
    final edits = {...s.edits};
    for (final row in s.list.rows) {
      final previous = row.previousRate;
      if (previous == null || previous <= 0 || edits.containsKey(row.key) || previous == row.rate) continue;
      edits[row.key] = previous;
    }
    emit(s.copyWith(edits: edits));
  }

  Future<void> save() async {
    final s = state;
    if (s is! RatesLoaded || s.saving || s.edits.isEmpty) return;
    emit(s.copyWith(saving: true));
    final changes = [
      for (final row in s.list.rows)
        if (s.edits[row.key] case final rate?) (productId: row.productId, packUnitId: row.packUnitId, rate: rate),
    ];
    switch (await _repository.save(s.list.date, changes)) {
      case Ok(:final value):
        emit(RatesLoaded(value, saved: true));
      case Err(:final failure):
        emit(s.copyWith(saveFailure: failure));
    }
  }
}
