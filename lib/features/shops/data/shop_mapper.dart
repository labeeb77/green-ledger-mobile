import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';

/// [date] as an ISO date (`2026-11-07`), the form the API uses for business dates.
String isoDate(DateTime date) =>
    '${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';

Shop shopFromDto(api.CustomerDtoOutput c) => Shop(
  id: c.id,
  name: c.name,
  area: c.area,
  phone: c.phone,
  whatsapp: c.whatsapp,
  outstanding: c.outstanding,
  overdue: c.overdue,
  creditLimit: c.creditLimit,
  lastVisit: switch (c.lastVisit) {
    final v? => LastVisit(date: v.visitDate, outcome: _outcome(v.outcome), byName: v.user.name),
    null => null,
  },
);

VisitOutcome _outcome(api.Outcome o) => switch (o) {
  api.Outcome.promised => VisitOutcome.promised,
  api.Outcome.notAvailable => VisitOutcome.notAvailable,
  api.Outcome.shopClosed => VisitOutcome.shopClosed,
  _ => VisitOutcome.paid,
};

ShopBill billFromDto(api.SalesBillSummaryDtoOutput b, {DateTime? now}) => ShopBill(
  id: b.id,
  number: b.number,
  billDate: b.billDate,
  total: b.total,
  open: b.open,
  state: switch (b.status) {
    api.SalesBillSummaryDtoOutputStatus.cancelled ||
    api.SalesBillSummaryDtoOutputStatus.rejected => BillState.cancelled,
    api.SalesBillSummaryDtoOutputStatus.pendingApproval => BillState.waiting,
    _ when b.open <= 0 => BillState.paid,
    // Past its due date (an Indian date) while still open.
    _ when b.dueDate.compareTo(isoDate(indianToday(now))) < 0 => BillState.overdue,
    _ => BillState.due,
  },
);

ShopPayment paymentFromDto(api.CustomerReceiptDtoOutput r) => ShopPayment(
  id: r.id,
  number: r.number,
  date: r.receiptDate,
  total: r.total,
  cancelled: r.status == api.CustomerReceiptDtoOutputStatus.cancelled,
);
