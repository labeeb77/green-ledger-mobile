import 'package:dio/dio.dart';
import 'package:green_ledger_mobile/api/generated/wm_api.dart';
import 'package:green_ledger_mobile/core/network/auth_interceptor.dart';
import 'package:green_ledger_mobile/core/network/token_store.dart';
import 'package:uuid/uuid.dart';

/// Builds the Dio stack and the generated API client.
///
/// - Every request carries an `X-Request-Id` (the server echoes it in errors).
/// - Mobile never sends `X-Client: web`, so refresh tokens come back in the body.
/// - `Idempotency-Key` is a required parameter of every generated POST: callers pass one
///   key per user action and reuse it on retry (docs/ARCHITECTURE.md).
class ApiClient {
  ApiClient({
    required String baseUrl,
    required TokenStore tokens,
    required Refresh refresh,
    required void Function() onSessionExpired,
  }) : dio = _base(baseUrl) {
    dio.interceptors.add(
      AuthInterceptor(
        tokens: tokens,
        refresh: refresh,
        retryClient: _base(baseUrl),
        onSessionExpired: onSessionExpired,
      ),
    );
    api = WmApi(dio);
  }

  final Dio dio;
  late final WmApi api;

  static Dio _base(String baseUrl) =>
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
}
