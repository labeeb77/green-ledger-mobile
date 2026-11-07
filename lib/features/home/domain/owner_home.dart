/// The owner/manager Home (ux-design section 3): today's sales, collections and dues,
/// plus what waits for them.
class OwnerHome {
  const OwnerHome({
    required this.sales,
    required this.bills,
    required this.collected,
    required this.outstanding,
    required this.overdue,
    this.approvalsWaiting,
    this.handoversWaiting,
  });

  /// Today's billed total and bill count; null when the user may not see sales.
  final int? sales;
  final int? bills;
  final int? collected;

  /// Everything customers owe now, and the part past its credit days.
  final int? outstanding;
  final int? overdue;

  /// Null when the user doesn't decide approvals / confirm handovers.
  final int? approvalsWaiting;

  /// Handovers waiting to be counted (the first page, at most 50).
  final int? handoversWaiting;
}

/// One agent's day on "Agents today" (ux-design 4.7).
class AgentDay {
  const AgentDay({
    required this.userId,
    required this.name,
    required this.collected,
    required this.cash,
    required this.upi,
    required this.bankTransfer,
    required this.cheque,
    required this.visits,
    required this.cashInBag,
    required this.handoverPending,
  });

  final String userId;
  final String name;
  final int collected;
  final int cash;
  final int upi;
  final int bankTransfer;
  final int cheque;
  final int visits;

  /// Cash not yet confirmed as handed over.
  final int cashInBag;
  final bool handoverPending;
}
