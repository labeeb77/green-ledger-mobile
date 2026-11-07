import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';
import 'package:uuid/uuid.dart';

final class VisitState {
  const VisitState({
    required this.today,
    required this.idempotencyKey,
    this.outcome,
    this.promiseChoice,
    this.promiseDate,
    this.note = '',
    this.busy = false,
    this.failure,
    this.saved = false,
  });

  /// The Indian date the visit is for.
  final DateTime today;
  final VisitOutcome? outcome;
  final PromiseChoice? promiseChoice;
  final DateTime? promiseDate;
  final String note;
  final bool busy;
  final AppFailure? failure;
  final bool saved;

  /// One key per visit, reused on every retry (ARCHITECTURE "Saving entries").
  final String idempotencyKey;

  String? get problem => visitProblem(outcome: outcome, promiseDate: promiseDate, today: today);

  VisitState copyWith({
    VisitOutcome? outcome,
    PromiseChoice? Function()? promiseChoice,
    DateTime? Function()? promiseDate,
    String? note,
    bool? busy,
    AppFailure? Function()? failure,
    bool? saved,
    String? idempotencyKey,
  }) => VisitState(
    today: today,
    outcome: outcome ?? this.outcome,
    promiseChoice: promiseChoice == null ? this.promiseChoice : promiseChoice(),
    promiseDate: promiseDate == null ? this.promiseDate : promiseDate(),
    note: note ?? this.note,
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    saved: saved ?? this.saved,
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
  );
}

/// Visit note (ux-design 4.7): outcome → promise date when Promised → note → SAVE.
class VisitCubit extends Cubit<VisitState> {
  VisitCubit(this._repository, this.customerId, this.shopName, {DateTime? now, String? idempotencyKey})
    : super(VisitState(today: indianToday(now), idempotencyKey: idempotencyKey ?? const Uuid().v4()));

  final VisitRepository _repository;
  final String customerId;
  final String shopName;

  void choose(VisitOutcome outcome) {
    final promised = outcome == VisitOutcome.promised;
    emit(
      state.copyWith(
        outcome: outcome,
        promiseChoice: promised ? null : () => null,
        promiseDate: promised ? null : () => null,
        failure: () => null,
      ),
    );
  }

  /// Tomorrow / This week; a picked date comes through [pickDate].
  void promise(PromiseChoice choice) => emit(
    state.copyWith(
      promiseChoice: () => choice,
      promiseDate: () => promiseDateFor(choice, state.today),
      failure: () => null,
    ),
  );

  void pickDate(DateTime date) => emit(
    state.copyWith(
      promiseChoice: () => PromiseChoice.pick,
      promiseDate: () => DateTime.utc(date.year, date.month, date.day),
      failure: () => null,
    ),
  );

  void setNote(String note) => emit(state.copyWith(note: note));

  Future<void> save() async {
    final outcome = state.outcome;
    if (outcome == null || state.problem != null || state.busy) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final result = await _repository.save(
      customerId: customerId,
      shopName: shopName,
      visitDate: isoDate(state.today),
      outcome: outcome,
      promiseDate: state.promiseDate == null ? null : isoDate(state.promiseDate!),
      note: state.note,
      idempotencyKey: state.idempotencyKey,
    );
    switch (result) {
      case Ok():
        emit(state.copyWith(busy: false, saved: true));
      case Err(:final failure):
        // As Collect: a refusal is final (a new key next time); network and server
        // failures keep the key, so a retry can't record the visit twice.
        emit(
          state.copyWith(
            busy: false,
            failure: () => keptIfOffline(failure),
            idempotencyKey: failure.kind == FailureKind.rejected ? const Uuid().v4() : null,
          ),
        );
    }
  }
}
