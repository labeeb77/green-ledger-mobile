import 'package:green_ledger_mobile/core/storage/secure_store.dart';

/// The access token lives in memory only; the refresh token in [SecureStore].
class TokenStore {
  TokenStore(this._secure);

  final SecureStore _secure;
  String? accessToken;

  Future<String?> readRefreshToken() => _secure.readRefreshToken();

  Future<void> save({required String accessToken, String? refreshToken}) async {
    this.accessToken = accessToken;
    if (refreshToken != null) await _secure.writeRefreshToken(refreshToken);
  }

  Future<void> clear() async {
    accessToken = null;
    await _secure.writeRefreshToken(null);
  }
}
