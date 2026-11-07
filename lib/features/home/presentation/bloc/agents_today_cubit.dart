import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';

sealed class AgentsTodayState {
  const AgentsTodayState();
}

final class AgentsTodayLoading extends AgentsTodayState {
  const AgentsTodayLoading();
}

final class AgentsTodayLoaded extends AgentsTodayState {
  const AgentsTodayLoaded(this.agents);

  final List<AgentDay> agents;
}

final class AgentsTodayFailed extends AgentsTodayState {
  const AgentsTodayFailed(this.failure);

  final AppFailure failure;
}

/// "Agents today"; a failed refresh keeps the last rows.
class AgentsTodayCubit extends Cubit<AgentsTodayState> {
  AgentsTodayCubit(this._repository) : super(const AgentsTodayLoading());

  final HomeRepository _repository;

  Future<void> load() async {
    final loaded = state is AgentsTodayLoaded;
    if (!loaded) emit(const AgentsTodayLoading());
    switch (await _repository.agentsToday()) {
      case Ok(:final value):
        emit(AgentsTodayLoaded(value));
      case Err(:final failure):
        if (!loaded) emit(AgentsTodayFailed(failure));
    }
  }
}
