import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/failure.dart';

DioException _response(int status, Object? body) {
  final options = RequestOptions(path: '/x');
  return DioException.badResponse(
    statusCode: status,
    requestOptions: options,
    response: Response<Object?>(requestOptions: options, statusCode: status, data: body),
  );
}

void main() {
  test('server messages are shown as they are, with the code for support', () {
    final f = AppFailure.from(
      _response(409, {
        'error': {
          'code': 'CHEQUE_DECIDED',
          'message': 'This cheque is already cleared',
          'requestId': '0123456789abcdef',
        },
      }),
    );
    expect(f.kind, FailureKind.rejected);
    expect(f.message, 'This cheque is already cleared');
    expect(f.supportLine, 'CHEQUE_DECIDED · 01234567');
  });

  test('401 is unauthorized; 5xx gets a generic message', () {
    expect(
      AppFailure.from(
        _response(401, {
          'error': {'code': 'INVALID_TOKEN', 'message': 'x'},
        }),
      ).kind,
      FailureKind.unauthorized,
    );
    final server = AppFailure.from(
      _response(500, {
        'error': {'code': 'INTERNAL_ERROR', 'message': 'stack'},
      }),
    );
    expect(server.kind, FailureKind.server);
    expect(server.message, isNot('stack'));
  });

  test('no connection is a network failure', () {
    final f = AppFailure.from(DioException.connectionError(requestOptions: RequestOptions(), reason: 'offline'));
    expect(f.kind, FailureKind.network);
  });
}
