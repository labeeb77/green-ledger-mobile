import 'dart:async';
import 'dart:io' show Platform;

import 'package:dio/dio.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/network/token_store.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/storage/secure_store.dart';
import 'package:green_ledger_mobile/features/auth/data/session_mapper.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:uuid/uuid.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this._client,
    required this._tokens,
    required this._secure,
    api.AuthClient? refreshClient,
  }) : _refreshClient = refreshClient ?? _client;

  final api.AuthClient _client;

  /// Used for the token refresh: a client without the auth interceptor (see `ApiClient`).
  final api.AuthClient _refreshClient;
  final TokenStore _tokens;
  final SecureStore _secure;
  final _expired = StreamController<void>.broadcast();

  @override
  Stream<void> get sessionExpired => _expired.stream;

  /// Called by the auth interceptor when a refresh is refused.
  void expire() {
    unawaited(_tokens.clear());
    _expired.add(null);
  }

  /// Rotates the tokens. False when the refresh token is refused; throws when offline.
  Future<bool> refresh() async {
    final refreshToken = await _tokens.readRefreshToken();
    if (refreshToken == null) return false;
    try {
      final tokens = await _refreshClient.authControllerRefresh(body: api.RefreshDto(refreshToken: refreshToken));
      await _tokens.save(accessToken: tokens.accessToken, refreshToken: tokens.refreshToken);
      return true;
    } on DioException catch (e) {
      final status = e.response?.statusCode;
      if (status == 401 || status == 403) {
        await _tokens.clear();
        return false;
      }
      rethrow;
    }
  }

  @override
  Future<Result<Session?>> restore() async {
    try {
      if (!await refresh()) return const Ok(null);
      return Ok(sessionFromMe(await _client.authControllerMe()));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<Session>> signIn({required String phone, required String password}) async {
    try {
      final tokens = await _client.authControllerLogin(
        body: api.LoginDto(
          phone: phone,
          password: password,
          device: api.Device(id: await _secure.deviceId(), platform: _platform()),
        ),
      );
      await _tokens.save(accessToken: tokens.accessToken, refreshToken: tokens.refreshToken);
      return Ok(sessionFromMe(await _client.authControllerMe()));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<Session>> changePassword({
    required String currentPassword,
    required String newPassword,
    required String idempotencyKey,
  }) async {
    try {
      final tokens = await _client.authControllerChangePassword(
        idempotencyKey: idempotencyKey,
        body: api.ChangePasswordDto(currentPassword: currentPassword, newPassword: newPassword),
      );
      await _tokens.save(accessToken: tokens.accessToken, refreshToken: tokens.refreshToken);
      return Ok(sessionFromMe(await _client.authControllerMe()));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _client.authControllerLogout(idempotencyKey: const Uuid().v4());
    } on Object {
      // Best effort: the tokens are forgotten either way.
    }
    await _tokens.clear();
  }

  static api.Platform _platform() {
    if (Platform.isAndroid) return api.Platform.android;
    if (Platform.isIOS) return api.Platform.ios;
    return api.Platform.other;
  }
}
