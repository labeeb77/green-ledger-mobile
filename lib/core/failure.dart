import 'package:dio/dio.dart';

/// What went wrong, in words a user can act on (ux-design section 7: plain words, the
/// server code only in small text for support).
enum FailureKind {
  /// No connection or the request timed out: the entry can be kept and sent again.
  network,

  /// Signed out, token expired or session revoked.
  unauthorized,

  /// The server refused the request (validation or a business rule).
  rejected,

  /// The server failed (5xx) or answered something unexpected.
  server,
}

class AppFailure {
  const AppFailure({required this.kind, required this.message, this.code, this.requestId, this.details});

  /// Maps any error from the API layer. The backend sends
  /// `{ "error": { "code", "message", "details"?, "requestId" } }` with messages already
  /// written for users, so they are shown as they are.
  factory AppFailure.from(Object error) {
    if (error is AppFailure) return error;
    if (error is! DioException) {
      return const AppFailure(kind: FailureKind.server, message: _unexpected);
    }
    switch (error.type) {
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.transformTimeout:
        return const AppFailure(
          kind: FailureKind.network,
          message: "Can't reach the server. Check the internet and try again.",
        );
      case DioExceptionType.badResponse:
      case DioExceptionType.badCertificate:
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
        break;
    }
    final status = error.response?.statusCode ?? 0;
    final body = error.response?.data;
    final envelope = body is Map && body['error'] is Map
        ? (body['error'] as Map).cast<String, Object?>()
        : const <String, Object?>{};
    final code = envelope['code'] as String?;
    final message = envelope['message'] as String?;
    final kind = switch (status) {
      401 => FailureKind.unauthorized,
      >= 400 && < 500 => FailureKind.rejected,
      _ => FailureKind.server,
    };
    return AppFailure(
      kind: kind,
      code: code,
      requestId: envelope['requestId'] as String?,
      details: envelope['details'],
      message: (message != null && message.isNotEmpty && kind != FailureKind.server) ? message : _unexpected,
    );
  }

  static const _unexpected = 'Something went wrong. Try again in a moment.';

  final FailureKind kind;
  final String message;
  final String? code;
  final String? requestId;
  final Object? details;

  /// Small text under the message for support, e.g. `INVALID_CREDENTIALS · 3f2a…`.
  String? get supportLine {
    final id = requestId;
    final parts = [?code, if (id != null) id.substring(0, id.length < 8 ? id.length : 8)];
    return parts.isEmpty ? null : parts.join(' · ');
  }

  @override
  String toString() => 'AppFailure($kind, $code, $message)';
}
