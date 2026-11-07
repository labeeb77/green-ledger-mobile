import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/approvals/domain/approval.dart';

class ApprovalsRepositoryImpl implements ApprovalsRepository {
  ApprovalsRepositoryImpl(this._client);

  final api.ApprovalsClient _client;

  @override
  Future<Result<List<Approval>>> pending() => _run(() async {
    final page = await _client.approvalsControllerList(status: api.Status.pending);
    return [for (final a in page.items) approvalFromDto(a)]..sort((a, b) => a.createdAt.compareTo(b.createdAt));
  });

  @override
  Future<Result<void>> approve(String id, {required String idempotencyKey}) => _run(
    () => _client.approvalsControllerApprove(id: id, idempotencyKey: idempotencyKey, body: const api.DecideDto()),
  );

  @override
  Future<Result<void>> reject(String id, {required String note, required String idempotencyKey}) => _run(
    () => _client.approvalsControllerReject(
      id: id,
      idempotencyKey: idempotencyKey,
      body: api.DecideDto(note: note),
    ),
  );

  static Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Ok(await call());
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

Approval approvalFromDto(api.ApprovalDtoOutput a) {
  final p = a.payload;
  String? text(String key) => switch (p[key]) {
    final String s when s.isNotEmpty => s,
    _ => null,
  };
  return Approval(
    id: a.id,
    kind: switch (a.type.json) {
      'new_customer' => ApprovalKind.newCustomer,
      'cancellation' => ApprovalKind.cancellation,
      'rate_below_minimum' => ApprovalKind.rateBelowMinimum,
      'over_credit_limit' => ApprovalKind.overCreditLimit,
      'wastage' => ApprovalKind.wastage,
      'stock_adjustment' => ApprovalKind.stockAdjustment,
      'write_off' => ApprovalKind.writeOff,
      'customer_return' => ApprovalKind.customerReturn,
      _ => ApprovalKind.other,
    },
    requester: a.requester.name,
    subject: [text('number'), text('customerName') ?? text('name')].nonNulls.join(' · '),
    details: issueLines(p['issues']) ?? [if (a.reason case final r? when r.isNotEmpty) ...r.split('; ')],
    amount: a.amount,
    createdAt: a.createdAt,
  );
}

/// The sale/order issues (payload `issues`) as "Over credit limit by ₹2,500 (due ₹45,000
/// / limit ₹50,000)" and "Onion: rate ₹28 below minimum ₹30"; null when there are none.
List<String>? issueLines(Object? issues) {
  if (issues is! List || issues.isEmpty) return null;
  int n(Map<Object?, Object?> m, String key) => (m[key] as num?)?.toInt() ?? 0;
  return [
    for (final issue in issues.whereType<Map<Object?, Object?>>())
      if (issue['type'] == 'over_credit_limit')
        'Over credit limit by ${formatMoney(n(issue, 'outstanding') + n(issue, 'newCredit') - n(issue, 'limit'))} '
            '(due ${formatMoney(n(issue, 'outstanding'))} / limit ${formatMoney(n(issue, 'limit'))})'
      else
        '${issue['product'] ?? 'A line'}: rate ${formatMoney(n(issue, 'rate'))} below minimum ${formatMoney(n(issue, 'minimum'))}',
  ];
}
