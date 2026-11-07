import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';

sealed class GodownHomeState {
  const GodownHomeState();
}

final class GodownHomeLoading extends GodownHomeState {
  const GodownHomeLoading();
}

final class GodownHomeLoaded extends GodownHomeState {
  const GodownHomeLoaded(this.home);

  final GodownHome home;
}

final class GodownHomeFailed extends GodownHomeState {
  const GodownHomeFailed(this.failure);

  final AppFailure failure;
}

/// The godown's Home card; a failed refresh keeps the last figures.
class GodownHomeCubit extends Cubit<GodownHomeState> {
  GodownHomeCubit(this._repository) : super(const GodownHomeLoading());

  final HomeRepository _repository;

  Future<void> load() async {
    final loaded = state is GodownHomeLoaded;
    if (!loaded) emit(const GodownHomeLoading());
    switch (await _repository.godownHome()) {
      case Ok(:final value):
        emit(GodownHomeLoaded(value));
      case Err(:final failure):
        if (!loaded) emit(GodownHomeFailed(failure));
    }
  }
}
