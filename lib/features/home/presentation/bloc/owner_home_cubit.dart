import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';

sealed class OwnerHomeState {
  const OwnerHomeState();
}

final class OwnerHomeLoading extends OwnerHomeState {
  const OwnerHomeLoading();
}

final class OwnerHomeLoaded extends OwnerHomeState {
  const OwnerHomeLoaded(this.home);

  final OwnerHome home;
}

final class OwnerHomeFailed extends OwnerHomeState {
  const OwnerHomeFailed(this.failure);

  final AppFailure failure;
}

/// The owner/manager Home card; a failed refresh keeps the last figures.
class OwnerHomeCubit extends Cubit<OwnerHomeState> {
  OwnerHomeCubit(this._repository, {required this._approvals, required this._handovers})
    : super(const OwnerHomeLoading());

  final HomeRepository _repository;
  final bool _approvals;
  final bool _handovers;

  Future<void> load() async {
    final loaded = state is OwnerHomeLoaded;
    if (!loaded) emit(const OwnerHomeLoading());
    switch (await _repository.ownerHome(approvals: _approvals, handovers: _handovers)) {
      case Ok(:final value):
        emit(OwnerHomeLoaded(value));
      case Err(:final failure):
        if (!loaded) emit(OwnerHomeFailed(failure));
    }
  }
}
