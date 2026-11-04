import 'dart:async';

import 'package:dio/dio.dart';
import 'package:green_ledger_mobile/core/network/token_store.dart';

/// Refreshes the session; returns false when the refresh token is no longer valid and
/// throws when the server can't be reached (the session is kept then).
typedef Refresh = Future<bool> Function();

/// Adds the bearer token and, on a 401, refreshes once and retries. [QueuedInterceptor]
/// handles one error at a time, so requests that fail together share one refresh: a
/// request that failed with an older token than the current one is simply retried.
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({
    required this._tokens,
    required this._refresh,
    required Dio retryClient,
    required this._onSessionExpired,
  }) : _retry = retryClient;

  final TokenStore _tokens;
  final Refresh _refresh;
  final Dio _retry;
  final void Function() _onSessionExpired;

  static const _sentWith = 'auth.token';

  /// Requests that must not trigger a refresh (they are the auth flow itself).
  static bool _isAuthCall(RequestOptions o) => o.path.endsWith('/auth/login') || o.path.endsWith('/auth/refresh');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _tokens.accessToken;
    if (token != null && !_isAuthCall(options)) {
      options.headers['Authorization'] = 'Bearer $token';
      options.extra[_sentWith] = token;
    }
    handler.next(options);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    final request = err.requestOptions;
    if (err.response?.statusCode != 401 || _isAuthCall(request) || request.extra[_sentWith] == null) {
      return handler.next(err);
    }
    bool refreshed;
    try {
      refreshed = request.extra[_sentWith] != _tokens.accessToken || await _refresh();
    } on Object {
      return handler.next(err);
    }
    final token = _tokens.accessToken;
    if (!refreshed || token == null) {
      _onSessionExpired();
      return handler.next(err);
    }
    try {
      request
        ..headers['Authorization'] = 'Bearer $token'
        ..extra[_sentWith] = token;
      handler.resolve(await _retry.fetch<dynamic>(request));
    } on DioException catch (e) {
      handler.next(e);
    }
  }
}
