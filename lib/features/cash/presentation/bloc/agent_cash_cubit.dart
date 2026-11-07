import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:uuid/uuid.dart';

final class AgentCashState {
  const AgentCashState({
    required this.idempotencyKey,
    this.bag,
    this.recent = const [],
    this.loading = true,
    this.loadFailure,
    this.busy = false,
    this.failure,
  });

  final CashBag? bag;

  /// The agent's own handovers the manager has counted, newest first.
  final List<Handover> recent;
  final bool loading;
  final AppFailure? loadFailure;

  /// HAND OVER is running, and why it last failed.
  final bool busy;
  final AppFailure? failure;

  /// One key per handover, reused on every retry.
  final String idempotencyKey;

  AgentCashState copyWith({
    CashBag? bag,
    List<Handover>? recent,
    bool? loading,
    AppFailure? Function()? loadFailure,
    bool? busy,
    AppFailure? Function()? failure,
    String? idempotencyKey,
  }) => AgentCashState(
    bag: bag ?? this.bag,
    recent: recent ?? this.recent,
    loading: loading ?? this.loading,
    loadFailure: loadFailure == null ? this.loadFailure : loadFailure(),
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
  );
}

/// The agent's Cash tab (ux-design 4.5): the bag, today's cash receipts, HAND OVER the
/// full bag, and how the manager's count came out.
class AgentCashCubit extends Cubit<AgentCashState> {
  AgentCashCubit(this._repository, this.userId, {String? idempotencyKey})
    : super(AgentCashState(idempotencyKey: idempotencyKey ?? const Uuid().v4()));

  final CashRepository _repository;
  final String userId;

  /// How many counted handovers to show.
  static const recentCount = 5;

  Future<void> load() async {
    emit(state.copyWith(loading: true, loadFailure: () => null));
    final (bag, handovers) = (await _repository.myBag(), await _repository.handovers());
    switch (bag) {
      case Ok(:final value):
        emit(
          state.copyWith(
            loading: false,
            bag: value,
            recent: switch (handovers) {
              Ok(:final value) => [
                for (final h in value)
                  if (h.agentId == userId && h.status != HandoverStatus.pending) h,
              ].take(recentCount).toList(),
              Err() => state.recent,
            },
          ),
        );
      case Err(:final failure):
        emit(state.copyWith(loading: false, loadFailure: () => failure));
    }
  }

  Future<void> handOver() async {
    if (state.busy || (state.bag?.balance ?? 0) <= 0 || state.bag?.pending != null) return;
    emit(state.copyWith(busy: true, failure: () => null));
    switch (await _repository.handOver(idempotencyKey: state.idempotencyKey)) {
      case Ok():
        emit(state.copyWith(busy: false, idempotencyKey: const Uuid().v4()));
        await load();
      case Err(:final failure):
        // A refusal is final (new key next time); network and server failures keep it.
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
