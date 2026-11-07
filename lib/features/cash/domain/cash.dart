import 'package:green_ledger_mobile/core/result.dart';

enum HandoverStatus { pending, confirmed, mismatch }

/// An agent's cash sent to the manager (D9): [declared] is what the agent handed over,
/// [counted] what the manager counted; only the counted amount moves. Paise.
class Handover {
  const Handover({
    required this.id,
    required this.agentId,
    required this.agentName,
    required this.date,
    required this.declared,
    required this.status,
    this.counted,
    this.confirmedBy,
  });

  final String id;
  final String agentId;
  final String agentName;

  /// ISO business date.
  final String date;
  final int declared;
  final int? counted;
  final HandoverStatus status;
  final String? confirmedBy;

  /// Counted minus declared (negative = short); 0 while waiting.
  int get difference => counted == null ? 0 : counted! - declared;
}

/// A cash receipt in the bag today.
class BagReceipt {
  const BagReceipt({required this.number, required this.shop, required this.amount});

  final String number;
  final String shop;
  final int amount;
}

/// The agent's cash bag: what is in it, today's cash receipts, any handover waiting.
class CashBag {
  const CashBag({required this.balance, required this.receipts, this.pending});

  final int balance;
  final List<BagReceipt> receipts;
  final Handover? pending;
}

abstract interface class CashRepository {
  Future<Result<CashBag>> myBag();

  /// Hands over the full bag (ux-design 4.5).
  Future<Result<Handover>> handOver({required String idempotencyKey});

  /// Handovers newest first; [status] narrows them.
  Future<Result<List<Handover>>> handovers({HandoverStatus? status});

  /// The manager's count; a different amount is a mismatch.
  Future<Result<Handover>> confirm({required String id, required int counted, required String idempotencyKey});
}

/// "₹200 short" / "₹200 extra" in plain words; null when the count matches.
String? differenceText(int difference, String Function(int paise) money) => switch (difference) {
  0 => null,
  < 0 => '${money(-difference)} short',
  _ => '${money(difference)} extra',
};
