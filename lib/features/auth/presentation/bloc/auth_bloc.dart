import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';

// ---- Events -------------------------------------------------------------------------

sealed class AuthEvent {
  const AuthEvent();
}

/// App start: restore the saved session.
final class AuthStarted extends AuthEvent {
  const AuthStarted();
}

/// Signed in, or the password was changed (new tokens, fresh session).
final class AuthSessionChanged extends AuthEvent {
  const AuthSessionChanged(this.session);
  final Session session;
}

final class AuthSignOutRequested extends AuthEvent {
  const AuthSignOutRequested();
}

final class _AuthExpired extends AuthEvent {
  const _AuthExpired();
}

// ---- States -------------------------------------------------------------------------

sealed class AuthState {
  const AuthState();
}

/// Restoring the session (splash).
final class AuthUnknown extends AuthState {
  const AuthUnknown();
}

/// The session could not be checked (no internet at start); the splash offers a retry.
final class AuthRestoreFailed extends AuthState {
  const AuthRestoreFailed(this.failure);
  final AppFailure failure;
}

final class AuthSignedOut extends AuthState {
  const AuthSignedOut({this.expired = false});

  /// Signed out by the server (revoked device, expired session): the login says why.
  final bool expired;
}

final class AuthSignedIn extends AuthState {
  const AuthSignedIn(this.session);
  final Session session;
}

/// The app-wide session. go_router redirects follow this state.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repository) : super(const AuthUnknown()) {
    on<AuthStarted>(_onStarted);
    on<AuthSessionChanged>((event, emit) => emit(AuthSignedIn(event.session)));
    on<AuthSignOutRequested>(_onSignOut);
    on<_AuthExpired>((_, emit) => emit(const AuthSignedOut(expired: true)));
    _expired = _repository.sessionExpired.listen((_) => add(const _AuthExpired()));
  }

  final AuthRepository _repository;
  late final StreamSubscription<void> _expired;

  Future<void> _onStarted(AuthStarted event, Emitter<AuthState> emit) async {
    emit(const AuthUnknown());
    switch (await _repository.restore()) {
      case Ok(value: final session?):
        emit(AuthSignedIn(session));
      case Ok():
        emit(const AuthSignedOut());
      case Err(:final failure) when failure.kind == FailureKind.network:
        emit(AuthRestoreFailed(failure));
      case Err():
        emit(const AuthSignedOut());
    }
  }

  Future<void> _onSignOut(AuthSignOutRequested event, Emitter<AuthState> emit) async {
    await _repository.signOut();
    emit(const AuthSignedOut());
  }

  @override
  Future<void> close() async {
    await _expired.cancel();
    await super.close();
  }
}
