import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/features/lock/domain/pin.dart';

sealed class AppLockState {
  const AppLockState();
}

/// Nothing covers the app (signed out, or unlocked).
final class LockOpen extends AppLockState {
  const LockOpen();
}

/// Signed in without a PIN on this phone: one must be set (first sign-in, or an
/// existing login opening this version).
final class LockSetup extends AppLockState {
  const LockSetup({this.offerBiometrics = false, this.pinSet = false});

  /// After the PIN is saved: ask once about fingerprint / Face ID.
  final bool offerBiometrics;
  final bool pinSet;
}

final class LockLocked extends AppLockState {
  const LockLocked({required this.attemptsLeft, this.biometrics = false, this.wrong = false});

  final int attemptsLeft;
  final bool biometrics;

  /// The last PIN was wrong.
  final bool wrong;
}

/// The PIN / biometric lock (ux-design section 9): asked at every start and after
/// [lockAfter] in the background; after [maxPinAttempts] wrong PINs the PIN is forgotten
/// and [onLockedOut] signs out, so the full password is needed.
class LockCubit extends Cubit<AppLockState> {
  LockCubit(this._store, this._biometrics, {required this.onLockedOut, DateTime Function()? now})
    : _now = now ?? DateTime.now,
      super(const LockOpen());

  final PinStore _store;
  final Biometrics _biometrics;
  final void Function() onLockedOut;
  final DateTime Function() _now;

  String? _userId;
  DateTime? _pausedAt;

  /// A user is signed in. [restored] is an app start with a saved session (locks when a
  /// PIN exists); a fresh password sign-in only needs a PIN if there is none.
  Future<void> signedIn(String userId, {required bool restored}) async {
    _userId = userId;
    final pin = await _store.read();
    if (pin == null || pin.userId != userId) {
      if (pin != null) await _store.clear();
      return emit(const LockSetup());
    }
    if (!restored) {
      await _store.setFailedAttempts(0);
      return emit(const LockOpen());
    }
    await _lock(pin);
  }

  /// Signed out: the PIN belonged to that session.
  Future<void> signedOut() async {
    _userId = null;
    _pausedAt = null;
    await _store.clear();
    emit(const LockOpen());
  }

  void paused() => _pausedAt ??= _now();

  Future<void> resumed() async {
    final pausedAt = _pausedAt;
    _pausedAt = null;
    if (pausedAt == null || _userId == null || state is! LockOpen) return;
    if (_now().difference(pausedAt) < lockAfter) return;
    if (await _store.read() case final pin?) await _lock(pin);
  }

  Future<void> _lock(StoredPin pin) async {
    final failed = await _store.failedAttempts();
    final biometrics = pin.biometrics && await _biometrics.available();
    emit(LockLocked(attemptsLeft: maxPinAttempts - failed, biometrics: biometrics));
    if (biometrics) await unlockWithBiometrics();
  }

  Future<void> setPin(String digits) async {
    final userId = _userId;
    if (userId == null || state is! LockSetup || digits.length != pinLength) return;
    final salt = newSalt();
    await _store.write(StoredPin(userId: userId, salt: salt, hash: hashPin(digits, salt)));
    await _store.setFailedAttempts(0);
    if (await _biometrics.available()) return emit(const LockSetup(pinSet: true, offerBiometrics: true));
    emit(const LockOpen());
  }

  /// The answer to "Use fingerprint / Face ID too?".
  Future<void> chooseBiometrics({required bool on}) async {
    final pin = await _store.read();
    if (on && pin != null && await _biometrics.authenticate()) await _store.write(pin.withBiometrics(on: true));
    emit(const LockOpen());
  }

  Future<void> enterPin(String digits) async {
    final s = state;
    final pin = await _store.read();
    if (s is! LockLocked || pin == null) return;
    if (hashPin(digits, pin.salt) == pin.hash) {
      await _store.setFailedAttempts(0);
      return emit(const LockOpen());
    }
    final failed = await _store.failedAttempts() + 1;
    if (failed >= maxPinAttempts) {
      await _store.clear();
      emit(const LockOpen());
      return onLockedOut();
    }
    await _store.setFailedAttempts(failed);
    emit(LockLocked(attemptsLeft: maxPinAttempts - failed, biometrics: s.biometrics, wrong: true));
  }

  Future<void> unlockWithBiometrics() async {
    final s = state;
    if (s is! LockLocked || !s.biometrics) return;
    if (await _biometrics.authenticate()) {
      await _store.setFailedAttempts(0);
      if (state is LockLocked) emit(const LockOpen());
    }
  }

  /// "Forgot PIN?": sign in with the password instead.
  Future<void> forgotPin() async {
    await _store.clear();
    emit(const LockOpen());
    onLockedOut();
  }
}
