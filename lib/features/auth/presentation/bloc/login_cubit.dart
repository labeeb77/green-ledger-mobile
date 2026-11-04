import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';

class LoginState {
  const LoginState({this.submitting = false, this.failure});

  final bool submitting;
  final AppFailure? failure;
}

/// The sign-in form. On success the session goes to [onSignedIn] (the AuthBloc).
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repository, {required this.onSignedIn}) : super(const LoginState());

  final AuthRepository _repository;
  final void Function(Session session) onSignedIn;

  Future<void> submit({required String phone, required String password}) async {
    if (state.submitting) return;
    emit(const LoginState(submitting: true));
    switch (await _repository.signIn(phone: phone.trim(), password: password)) {
      case Ok(:final value):
        emit(const LoginState());
        onSignedIn(value);
      case Err(:final failure):
        emit(LoginState(failure: failure));
    }
  }
}
