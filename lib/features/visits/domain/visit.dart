import 'package:green_ledger_mobile/core/result.dart';

/// What happened at the shop (ux-design 4.7).
enum VisitOutcome {
  paid('Paid'),
  promised('Promised'),
  notAvailable('Not available'),
  shopClosed('Shop closed');

  VisitOutcome(this.label);

  final String label;
}

/// The date chips for a promise; [pick] opens the date picker.
enum PromiseChoice {
  tomorrow('Tomorrow'),
  thisWeek('This week'),
  pick('Pick a date');

  PromiseChoice(this.label);

  final String label;
}

abstract interface class VisitRepository {
  /// Records the visit with [idempotencyKey] (reused on every retry of this visit, so it
  /// is never recorded twice). [visitDate] and [promiseDate] are ISO dates; the visit
  /// date is fixed when the visit starts, so a later SEND AGAIN sends the same request.
  /// A network failure keeps the visit as a draft.
  Future<Result<void>> save({
    required String customerId,
    required String shopName,
    required String visitDate,
    required VisitOutcome outcome,
    required String idempotencyKey,
    String? promiseDate,
    String note = '',
  });
}

/// The date a chip stands for, from [today] (an Indian date): Tomorrow, or "This week" =
/// the coming Saturday (Tomorrow when today is Saturday or Sunday, so it is never the past).
DateTime promiseDateFor(PromiseChoice choice, DateTime today) {
  final tomorrow = today.add(const Duration(days: 1));
  return switch (choice) {
    PromiseChoice.tomorrow || PromiseChoice.pick => tomorrow,
    PromiseChoice.thisWeek =>
      today.weekday >= DateTime.saturday ? tomorrow : today.add(Duration(days: DateTime.saturday - today.weekday)),
  };
}

/// What blocks SAVE, in plain words; null when the visit can be saved. A promise needs
/// a date, never before today.
String? visitProblem({required VisitOutcome? outcome, required DateTime? promiseDate, required DateTime today}) {
  if (outcome == null) return 'Choose what happened';
  if (outcome != VisitOutcome.promised) return null;
  if (promiseDate == null) return 'Choose when they will pay';
  if (promiseDate.isBefore(today)) return 'The promise date can’t be before today';
  return null;
}
