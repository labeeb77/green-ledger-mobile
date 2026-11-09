import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/network/data_changes.dart';

/// Answers every request with [status].
class _Server implements HttpClientAdapter {
  _Server(this.status);

  final int status;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async => ResponseBody.fromString(
    '{}',
    status,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );

  @override
  void close({bool force = false}) {}
}

void main() {
  Future<int> changesAfter(String method, String path, {int status = 201}) async {
    final changes = DataChanges();
    var count = 0;
    final subscription = changes.stream.listen((_) => count++);
    final dio = Dio()
      ..httpClientAdapter = _Server(status)
      ..interceptors.add(changes.interceptor);
    try {
      await dio.request<void>('http://api.test$path', options: Options(method: method));
    } on DioException {
      // A failed save is not a change.
    }
    await Future<void>.delayed(Duration.zero);
    await subscription.cancel();
    await changes.close();
    return count;
  }

  test('a successful save fires a change', () async {
    expect(await changesAfter('POST', '/api/v1/receipts'), 1);
    expect(await changesAfter('PUT', '/api/v1/pricing/daily-rates', status: 200), 1);
  });

  test('reads, failed saves and sign-in do not', () async {
    expect(await changesAfter('GET', '/api/v1/home/agent', status: 200), 0);
    expect(await changesAfter('POST', '/api/v1/receipts', status: 422), 0);
    expect(await changesAfter('POST', '/api/v1/auth/login', status: 200), 0);
  });
}
