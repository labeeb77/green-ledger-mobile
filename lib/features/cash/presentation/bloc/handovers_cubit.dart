import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:uuid/uuid.dart';

final class HandoversState {
  const HandoversState({
    this.pending = const [],
    this.recent = const [],
    this.loading = true,
    this.loadFailure,
    this.counted = const {},
    this.confirming = const {},
    this.failures = const {},
    this.keys = const {},
  });

  /// Waiting to be counted, oldest first.
  final List<Handover> pending;

  /// Counted ones, newest first.
  final List<Handover> recent;
  final bool loading;
  final AppFailure? loadFailure;

  /// The amount typed per handover id (paise); starts at the declared amount.
  final Map<String, int> counted;
  final Set<String> confirming;
  final Map<String, AppFailure> failures;

  /// One idempotency key per handover's CONFIRM, reused on retry.
  final Map<String, String> keys;

  int countedFor(Handover h) => counted[h.id] ?? h.declared;

  HandoversState copyWith({
    List<Handover>? pending,
    List<Handover>? recent,
    bool? loading,
    AppFailure? Function()? loadFailure,
    Map<String, int>? counted,
    Set<String>? confirming,
    Map<String, AppFailure>? failures,
    Map<String, String>? keys,
  }) => HandoversState(
    pending: pending ?? this.pending,
    recent: recent ?? this.recent,
    loading: loading ?? this.loading,
    loadFailure: loadFailure == null ? this.loadFailure : loadFailure(),
    counted: counted ?? this.counted,
    confirming: confirming ?? this.confirming,
    failures: failures ?? this.failures,
    keys: keys ?? this.keys,
  );
}

/// Owner/manager: count each agent's cash and CONFIRM (ux-design 4.5); a different
/// count is a mismatch, shown in red.
class HandoversCubit extends Cubit<HandoversState> {
  HandoversCubit(this._repository) : super(const HandoversState());

  final CashRepository _repository;

  static const recentCount = 10;

  Future<void> load() async {
    emit(state.copyWith(loading: true, loadFailure: () => null));
    switch (await _repository.handovers()) {
      case Ok(:final value):
        emit(
          state.copyWith(
            loading: false,
            pending: [
              for (final h in value.reversed)
                if (h.status == HandoverStatus.pending) h,
            ],
            recent: [
              for (final h in value)
                if (h.status != HandoverStatus.pending) h,
            ].take(recentCount).toList(),
          ),
        );
      case Err(:final failure):
        emit(state.copyWith(loading: false, loadFailure: () => failure));
    }
  }

  void setCounted(String id, int paise) => emit(state.copyWith(counted: {...state.counted, id: paise}));

  Future<void> confirm(Handover handover) async {
    if (state.confirming.contains(handover.id)) return;
    final key = state.keys[handover.id] ?? const Uuid().v4();
    emit(
      state.copyWith(
        confirming: {...state.confirming, handover.id},
        failures: {...state.failures}..remove(handover.id),
        keys: {...state.keys, handover.id: key},
      ),
    );
    final result = await _repository.confirm(id: handover.id, counted: state.countedFor(handover), idempotencyKey: key);
    final confirming = {...state.confirming}..remove(handover.id);
    switch (result) {
      case Ok():
        emit(state.copyWith(confirming: confirming, keys: {...state.keys}..remove(handover.id)));
        await load();
      case Err(:final failure):
        emit(
          state.copyWith(
            confirming: confirming,
            failures: {...state.failures, handover.id: failure},
            keys: failure.kind == FailureKind.rejected ? ({...state.keys}..remove(handover.id)) : null,
          ),
        );
    }
  }
}
