import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/mistakes/domain/mistakes.dart';
import 'package:uuid/uuid.dart';

final class ReportMistakeState {
  const ReportMistakeState({
    required this.idempotencyKey,
    this.reason,
    this.note = '',
    this.busy = false,
    this.failure,
    this.sent = false,
  });

  final MistakeReason? reason;
  final String note;
  final bool busy;
  final AppFailure? failure;
  final bool sent;

  /// One key per report, reused on every retry (ARCHITECTURE "Saving entries").
  final String idempotencyKey;

  String? get problem => mistakeProblem(reason: reason, note: note);

  ReportMistakeState copyWith({
    MistakeReason? reason,
    String? note,
    bool? busy,
    AppFailure? Function()? failure,
    bool? sent,
    String? idempotencyKey,
  }) => ReportMistakeState(
    reason: reason ?? this.reason,
    note: note ?? this.note,
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    sent: sent ?? this.sent,
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
  );
}

/// Report a mistake (ux-design CR 2): reason chips → note → SEND.
class ReportMistakeCubit extends Cubit<ReportMistakeState> {
  ReportMistakeCubit(this._repository, this.target, {String? idempotencyKey})
    : super(ReportMistakeState(idempotencyKey: idempotencyKey ?? const Uuid().v4()));

  final MistakesRepository _repository;
  final MistakeTarget target;

  void choose(MistakeReason reason) => emit(state.copyWith(reason: reason, failure: () => null));

  void setNote(String note) => emit(state.copyWith(note: note));

  Future<void> send() async {
    final reason = state.reason;
    if (reason == null || state.problem != null || state.busy) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final result = await _repository.report(
      target: target,
      reason: reason,
      note: state.note,
      idempotencyKey: state.idempotencyKey,
    );
    switch (result) {
      case Ok():
        emit(state.copyWith(busy: false, sent: true));
      case Err(:final failure):
        // As Visit: a refusal is final (a new key next time); other failures keep the
        // key, so a retry can't report twice.
        emit(
          state.copyWith(
            busy: false,
            failure: () => failure,
            idempotencyKey: failure.kind == FailureKind.rejected ? const Uuid().v4() : null,
          ),
        );
    }
  }
}
