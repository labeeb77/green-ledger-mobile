import 'package:green_ledger_mobile/core/failure.dart';

/// The outcome of a repository call: a value or an [AppFailure]. Repositories never
/// throw for expected errors (network, validation, business rules).
sealed class Result<T> {
  const Result();
}

final class Ok<T> extends Result<T> {
  const Ok(this.value);
  final T value;
}

final class Err<T> extends Result<T> {
  const Err(this.failure);
  final AppFailure failure;
}
