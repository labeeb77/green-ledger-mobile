import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:green_ledger_mobile/core/theme/theme_cubit.dart';
import 'package:uuid/uuid.dart';

/// Secrets kept in the Keychain / Android Keystore: the refresh token and this phone's
/// device id (sent at login so the owner can sign out a lost phone). Also the phone's
/// theme choice, the one plain setting the app has.
class SecureStore implements ThemeStore {
  SecureStore([FlutterSecureStorage? storage]) : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  static const _refreshToken = 'refresh_token';
  static const _deviceId = 'device_id';
  static const _theme = 'theme_mode';

  Future<String?> readRefreshToken() => _storage.read(key: _refreshToken);

  Future<void> writeRefreshToken(String? token) =>
      token == null ? _storage.delete(key: _refreshToken) : _storage.write(key: _refreshToken, value: token);

  /// `system`, `light` or `dark`; null until chosen.
  @override
  Future<String?> readTheme() => _storage.read(key: _theme);

  @override
  Future<void> writeTheme(String mode) => _storage.write(key: _theme, value: mode);

  /// A random id created once per install.
  Future<String> deviceId() async {
    final existing = await _storage.read(key: _deviceId);
    if (existing != null) return existing;
    final id = const Uuid().v4();
    await _storage.write(key: _deviceId, value: id);
    return id;
  }
}
