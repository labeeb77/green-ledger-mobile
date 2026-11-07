import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';

/// `Visited Mon 24 Oct · Promised`, or `Not visited yet`.
String lastVisitText(LastVisit? visit, {DateTime? now}) => switch (visit) {
  null => 'Not visited yet',
  final v => 'Visited ${formatDate(v.date, now: now)} · ${v.outcome.label}',
};
