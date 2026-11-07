import 'package:green_ledger_mobile/core/result.dart';

/// Money collected today, by method (paise).
class CollectedToday {
  const CollectedToday({
    required this.total,
    required this.cash,
    required this.upi,
    required this.bankTransfer,
    required this.cheque,
  });

  final int total;
  final int cash;
  final int upi;
  final int bankTransfer;
  final int cheque;
}

/// A shop on the "Due today" list, in the server's order (promised, overdue, due today).
class DueShop {
  const DueShop({
    required this.customerId,
    required this.name,
    required this.outstanding,
    required this.due,
    required this.overdue,
    required this.promisedToday,
    this.area,
  });

  final String customerId;
  final String name;
  final String? area;
  final int outstanding;

  /// Due by today (opening balance included) and the part past its due date.
  final int due;
  final int overdue;
  final bool promisedToday;
}

/// The agent's Home figures, all computed by the server for today (Indian date).
class AgentHome {
  const AgentHome({
    required this.dueOnMyShops,
    required this.collectedToday,
    required this.cashToHandOver,
    required this.handoverPending,
    required this.dueToday,
  });

  final int dueOnMyShops;
  final CollectedToday collectedToday;
  final int cashToHandOver;
  final bool handoverPending;
  final List<DueShop> dueToday;
}

abstract interface class HomeRepository {
  /// The signed-in agent's Home (agents only).
  Future<Result<AgentHome>> agentHome();
}
