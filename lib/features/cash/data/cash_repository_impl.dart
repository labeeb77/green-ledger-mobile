import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';

class CashRepositoryImpl implements CashRepository {
  CashRepositoryImpl(this._client);

  final api.CollectionsClient _client;

  @override
  Future<Result<CashBag>> myBag() => _run(() async {
    final bag = await _client.cashHandoversControllerMyBag();
    return CashBag(
      balance: bag.balance,
      receipts: [
        for (final r in bag.todayCashReceipts) BagReceipt(number: r.receiptNumber, shop: r.customer, amount: r.amount),
      ],
      pending: switch (bag.pendingHandover) {
        final p? => Handover(
          id: p.id,
          agentId: p.agent.id,
          agentName: p.agent.name,
          date: p.handoverDate,
          declared: p.declaredAmount,
          counted: p.countedAmount,
          status: _status(p.status.json),
        ),
        null => null,
      },
    );
  });

  @override
  Future<Result<Handover>> handOver({required String idempotencyKey}) =>
      _run(() async => handoverFromDto(await _client.cashHandoversControllerCreate(idempotencyKey: idempotencyKey)));

  @override
  Future<Result<List<Handover>>> handovers({HandoverStatus? status}) => _run(() async {
    final page = await _client.cashHandoversControllerList(
      status: switch (status) {
        HandoverStatus.pending => api.Status6.pending,
        HandoverStatus.confirmed => api.Status6.confirmed,
        HandoverStatus.mismatch => api.Status6.mismatch,
        null => null,
      },
    );
    return [for (final h in page.items) handoverFromDto(h)];
  });

  @override
  Future<Result<Handover>> confirm({required String id, required int counted, required String idempotencyKey}) => _run(
    () async => handoverFromDto(
      await _client.cashHandoversControllerConfirm(
        id: id,
        idempotencyKey: idempotencyKey,
        body: api.ConfirmHandoverDto(countedAmount: counted),
      ),
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

Handover handoverFromDto(api.HandoverDtoOutput h) => Handover(
  id: h.id,
  agentId: h.agent.id,
  agentName: h.agent.name,
  date: h.handoverDate,
  declared: h.declaredAmount,
  counted: h.countedAmount,
  status: _status(h.status.json),
  confirmedBy: h.confirmedBy?.name,
);

HandoverStatus _status(String? json) => switch (json) {
  'confirmed' => HandoverStatus.confirmed,
  'mismatch' => HandoverStatus.mismatch,
  _ => HandoverStatus.pending,
};
