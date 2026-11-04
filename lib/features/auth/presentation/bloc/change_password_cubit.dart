import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:uuid/uuid.dart';

class ChangePasswordState {
  const ChangePasswordState({this.submitting = false, this.failure});

  final bool submitting;
  final AppFailure? failure;
}

/// The same rules as the server's `newPasswordSchema`, checked first for quick feedback.
String? newPasswordProblem(String password) {
  if (password.length < 8) return 'Use at least 8 characters';
  if (!RegExp('[A-Za-z]').hasMatch(password)) return 'Include at least one letter';
  if (!RegExp(r'\d').hasMatch(password)) return 'Include at least one number';
  return null;
}

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit(this._repository, {required this.onChanged}) : super(const ChangePasswordState());

  final AuthRepository _repository;
  final void Function(Session session) onChanged;

  /// One key per attempt at this action, reused when the user retries after a failure.
  String _idempotencyKey = const Uuid().v4();

  Future<void> submit({required String currentPassword, required String newPassword}) async {
    if (state.submitting) return;
    emit(const ChangePasswordState(submitting: true));
    final result = await _repository.changePassword(
      currentPassword: currentPassword,
      newPassword: newPassword,
      idempotencyKey: _idempotencyKey,
    );
    switch (result) {
      case Ok(:final value):
        emit(const ChangePasswordState());
        onChanged(value);
      case Err(:final failure):
        // A refused request is final; a new attempt gets a new key.
        if (failure.kind != FailureKind.network) _idempotencyKey = const Uuid().v4();
        emit(ChangePasswordState(failure: failure));
    }
  }
}
