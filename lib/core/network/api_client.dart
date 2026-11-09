import 'package:dio/dio.dart';
import 'package:green_ledger_mobile/api/generated/clients/auth_client.dart';
import 'package:green_ledger_mobile/api/generated/wm_api.dart';
import 'package:green_ledger_mobile/core/network/auth_interceptor.dart';
import 'package:green_ledger_mobile/core/network/data_changes.dart';
import 'package:green_ledger_mobile/core/network/token_store.dart';
import 'package:uuid/uuid.dart';

/// Builds the Dio stack and the generated API client.
///
/// - Every request carries an `X-Request-Id` (the server echoes it in errors).
/// - Mobile never sends `X-Client: web`, so refresh tokens come back in the body.
/// - A successful save fires [DataChanges], so screens kept alive reload.
/// - `Idempotency-Key` is a required parameter of every generated POST: callers pass one
///   key per user action and reuse it on retry (docs/ARCHITECTURE.md).
class ApiClient {
  ApiClient({
    required String baseUrl,
    required TokenStore tokens,
    required Refresh refresh,
    required void Function() onSessionExpired,
    DataChanges? changes,
    HttpClientAdapter? adapter,
  }) : dio = _base(baseUrl, adapter) {
    dio.interceptors.add(
      AuthInterceptor(
        tokens: tokens,
        refresh: refresh,
        retryClient: _base(baseUrl, adapter),
        onSessionExpired: onSessionExpired,
      ),
    );
    if (changes != null) dio.interceptors.add(changes.interceptor);
    api = WmApi(dio);
    refreshAuth = AuthClient(_base(baseUrl, adapter));
  }

  final Dio dio;
  late final WmApi api;

  /// Auth calls made from inside [AuthInterceptor] (the token refresh). They must not go
  /// through it: its queue would wait on itself when the refresh is refused.
  late final AuthClient refreshAuth;

  /// [adapter] replaces the HTTP transport (tests).
  static Dio _base(String baseUrl, HttpClientAdapter? adapter) {
    final dio =
        Dio(
            BaseOptions(
              baseUrl: baseUrl,
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 20),
              sendTimeout: const Duration(seconds: 20),
              headers: {'Accept': 'application/json'},
            ),
          )
          ..interceptors.add(
            InterceptorsWrapper(
              onRequest: (options, handler) {
                options.headers['X-Request-Id'] ??= const Uuid().v4();
                handler.next(options);
              },
            ),
          );
    if (adapter != null) dio.httpClientAdapter = adapter;
    return dio;
  }
}
