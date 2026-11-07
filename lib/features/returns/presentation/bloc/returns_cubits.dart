import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/returns/domain/returns.dart';
import 'package:uuid/uuid.dart';

final class ReturnsListState {
  const ReturnsListState({this.returns = const [], this.loading = true, this.failure});

  final List<ReturnToInspect> returns;
  final bool loading;
  final AppFailure? failure;
}

class ReturnsListCubit extends Cubit<ReturnsListState> {
  ReturnsListCubit(this._repository) : super(const ReturnsListState());

  final ReturnsRepository _repository;

  Future<void> load() async {
    emit(ReturnsListState(returns: state.returns));
    switch (await _repository.toInspect()) {
      case Ok(:final value):
        emit(ReturnsListState(returns: value, loading: false));
      case Err(:final failure):
        emit(ReturnsListState(returns: state.returns, loading: false, failure: failure));
    }
  }
}

enum InspectStep { form, check, saved }

final class InspectState {
  const InspectState({
    required this.idempotencyKey,
    this.results = const {},
    this.step = InspectStep.form,
    this.busy = false,
    this.failure,
  });

  final Map<String, InspectionResult> results;
  final InspectStep step;
  final bool busy;
  final AppFailure? failure;
  final String idempotencyKey;

  InspectState copyWith({
    Map<String, InspectionResult>? results,
    InspectStep? step,
    bool? busy,
    AppFailure? Function()? failure,
    String? idempotencyKey,
  }) => InspectState(
    results: results ?? this.results,
    step: step ?? this.step,
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
  );
}

/// Return inspection (ux-design 4.7): Saleable / Damaged / Disposed per line; lines left
/// unchosen stay to inspect later.
class InspectCubit extends Cubit<InspectState> {
  InspectCubit(this._repository, this.ret, {String? idempotencyKey})
    : super(InspectState(idempotencyKey: idempotencyKey ?? const Uuid().v4()));

  final ReturnsRepository _repository;
  final ReturnToInspect ret;

  void choose(String lineId, InspectionResult result) =>
      emit(state.copyWith(results: {...state.results, lineId: result}));

  void next() {
    if (state.results.isNotEmpty) emit(state.copyWith(step: InspectStep.check, failure: () => null));
  }

  void back() => emit(state.copyWith(step: InspectStep.form, failure: () => null));

  Future<void> save() async {
    if (state.busy || state.results.isEmpty) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final result = await _repository.inspect(ret: ret, results: state.results, idempotencyKey: state.idempotencyKey);
    switch (result) {
      case Ok():
        emit(state.copyWith(busy: false, step: InspectStep.saved));
      case Err(:final failure):
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
