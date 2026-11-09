import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/network/api_client.dart';
import 'package:green_ledger_mobile/core/network/auth_interceptor.dart';
import 'package:green_ledger_mobile/core/network/token_store.dart';
import 'package:green_ledger_mobile/core/storage/secure_store.dart';
import 'package:green_ledger_mobile/features/auth/data/auth_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

class _MockSecure extends Mock implements SecureStore;

/// Answers 200 for the current token and 401 for any other.
class _Server implements HttpClientAdapter {
  _Server(this.validToken);

  String validToken;
  final seen = <String?>[];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    final auth = options.headers['Authorization'] as String?;
    seen.add(auth);
    final ok = auth == 'Bearer $validToken';
    return ResponseBody.fromString(
      jsonEncode(
        ok
            ? {'ok': true}
            : {
                'error': {'code': 'INVALID_TOKEN', 'message': 'Sign in again'},
              },
      ),
      ok ? 200 : 401,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  late TokenStore tokens;
  late _Server server;
  late Dio dio;
  late int refreshes;
  late int expired;

  Dio client() => Dio(BaseOptions(baseUrl: 'http://test'))..httpClientAdapter = server;

  setUp(() {
    final secure = _MockSecure();
    when(() => secure.writeRefreshToken(any())).thenAnswer((_) async {});
    tokens = TokenStore(secure)..accessToken = 'old';
    server = _Server('new');
    refreshes = 0;
    expired = 0;
    dio = client()
      ..interceptors.add(
        AuthInterceptor(
          tokens: tokens,
          refresh: () async {
            refreshes++;
            await Future<void>.delayed(const Duration(milliseconds: 10));
            tokens.accessToken = 'new';
            return true;
          },
          retryClient: client(),
          onSessionExpired: () => expired++,
        ),
      );
  });

  test('requests failing together share one refresh and are retried', () async {
    final responses = await Future.wait([for (var i = 0; i < 3; i++) dio.get<dynamic>('/api/v1/customers')]);
    expect(responses.map((r) => r.statusCode), everyElement(200));
    expect(refreshes, 1);
    expect(expired, 0);
  });

  test('a refused refresh ends the session', () async {
    final failing = client()
      ..interceptors.add(
        AuthInterceptor(
          tokens: tokens,
          refresh: () async => false,
          retryClient: client(),
          onSessionExpired: () => expired++,
        ),
      );
    await expectLater(failing.get<dynamic>('/api/v1/customers'), throwsA(isA<DioException>()));
    expect(expired, 1);
  });

  test('offline during refresh keeps the session', () async {
    final failing = client()
      ..interceptors.add(
        AuthInterceptor(
          tokens: tokens,
          refresh: () async => throw DioException.connectionError(requestOptions: RequestOptions(), reason: 'offline'),
          retryClient: client(),
          onSessionExpired: () => expired++,
        ),
      );
    await expectLater(failing.get<dynamic>('/api/v1/customers'), throwsA(isA<DioException>()));
    expect(expired, 0);
  });

  test('login and refresh never trigger a refresh', () async {
    await expectLater(dio.post<dynamic>('/api/v1/auth/login'), throwsA(isA<DioException>()));
    expect(refreshes, 0);
    expect(server.seen.single, isNull);
  });

  test('a refused refresh through the real client signs out (it once deadlocked the queue)', () async {
    final secure = _MockSecure();
    when(secure.readRefreshToken).thenAnswer((_) async => 'revoked');
    when(() => secure.writeRefreshToken(any())).thenAnswer((_) async {});
    final store = TokenStore(secure)..accessToken = 'old';
    late final AuthRepositoryImpl auth;
    // The server refuses every token, the refresh included (a deactivated login).
    final client = ApiClient(
      baseUrl: 'http://test',
      tokens: store,
      refresh: () => auth.refresh(),
      onSessionExpired: () => auth.expire(),
      adapter: _Server('none'),
    );
    auth = AuthRepositoryImpl(
      client: client.api.auth,
      refreshClient: client.refreshAuth,
      tokens: store,
      secure: secure,
    );
    final signedOut = auth.sessionExpired.first;
    await expectLater(
      client.api.home.homeControllerAgent().timeout(const Duration(seconds: 2)),
      throwsA(isA<DioException>()),
    );
    await signedOut.timeout(const Duration(seconds: 1));
    expect(store.accessToken, isNull);
  });
}
