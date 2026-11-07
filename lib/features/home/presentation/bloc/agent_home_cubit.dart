import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';

sealed class AgentHomeState {
  const AgentHomeState();
}

final class AgentHomeLoading extends AgentHomeState {
  const AgentHomeLoading();
}

final class AgentHomeLoaded extends AgentHomeState {
  const AgentHomeLoaded(this.home);

  final AgentHome home;
}

final class AgentHomeFailed extends AgentHomeState {
  const AgentHomeFailed(this.failure);

  final AppFailure failure;
}

/// The agent's Home card; a failed refresh keeps the last figures.
class AgentHomeCubit extends Cubit<AgentHomeState> {
  AgentHomeCubit(this._repository) : super(const AgentHomeLoading());

  final HomeRepository _repository;

  Future<void> load() async {
    final loaded = state is AgentHomeLoaded;
    if (!loaded) emit(const AgentHomeLoading());
    switch (await _repository.agentHome()) {
      case Ok(:final value):
        emit(AgentHomeLoaded(value));
      case Err(:final failure):
        if (!loaded) emit(AgentHomeFailed(failure));
    }
  }
}
