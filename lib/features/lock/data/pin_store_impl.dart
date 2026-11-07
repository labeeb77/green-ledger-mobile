import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:green_ledger_mobile/features/lock/domain/pin.dart';
import 'package:local_auth/local_auth.dart';

class SecurePinStore implements PinStore {
  SecurePinStore([FlutterSecureStorage? storage]) : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  static const _pin = 'app_pin';
  static const _failed = 'app_pin_failed';

  @override
  Future<StoredPin?> read() async {
    final json = await _storage.read(key: _pin);
    if (json == null) return null;
    final m = jsonDecode(json) as Map<String, Object?>;
    return StoredPin(
      userId: m['userId']! as String,
      salt: m['salt']! as String,
      hash: m['hash']! as String,
      biometrics: m['biometrics'] == true,
    );
  }

  @override
  Future<void> write(StoredPin pin) => _storage.write(
    key: _pin,
    value: jsonEncode({'userId': pin.userId, 'salt': pin.salt, 'hash': pin.hash, 'biometrics': pin.biometrics}),
  );

  @override
  Future<int> failedAttempts() async => int.tryParse(await _storage.read(key: _failed) ?? '') ?? 0;

  @override
  Future<void> setFailedAttempts(int count) => _storage.write(key: _failed, value: '$count');

  @override
  Future<void> clear() async {
    await _storage.delete(key: _pin);
    await _storage.delete(key: _failed);
  }
}

class LocalBiometrics implements Biometrics {
  LocalBiometrics([LocalAuthentication? auth]) : _auth = auth ?? LocalAuthentication();

  final LocalAuthentication _auth;

  @override
  Future<bool> available() async {
    try {
      return await _auth.canCheckBiometrics && (await _auth.getAvailableBiometrics()).isNotEmpty;
    } on PlatformException {
      return false;
    }
  }

  @override
  Future<bool> authenticate() async {
    try {
      return await _auth.authenticate(localizedReason: 'Unlock Wholesale Manager', biometricOnly: true);
    } on Object {
      // Cancelled, locked out or not enrolled: the PIN still works.
      return false;
    }
  }
}
