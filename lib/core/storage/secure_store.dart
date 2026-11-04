import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:uuid/uuid.dart';

/// Secrets kept in the Keychain / Android Keystore: the refresh token and this phone's
/// device id (sent at login so the owner can sign out a lost phone).
class SecureStore {
  SecureStore([FlutterSecureStorage? storage]) : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  static const _refreshToken = 'refresh_token';
  static const _deviceId = 'device_id';

  Future<String?> readRefreshToken() => _storage.read(key: _refreshToken);

  Future<void> writeRefreshToken(String? token) =>
      token == null ? _storage.delete(key: _refreshToken) : _storage.write(key: _refreshToken, value: token);

  /// A random id created once per install.
  Future<String> deviceId() async {
    final existing = await _storage.read(key: _deviceId);
    if (existing != null) return existing;
    final id = const Uuid().v4();
    await _storage.write(key: _deviceId, value: id);
    return id;
  }
}
