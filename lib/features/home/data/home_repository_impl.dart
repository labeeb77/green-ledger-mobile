import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._client, {required this._reports, required this._approvals, required this._collections});

  final api.HomeClient _client;
  final api.ReportsClient _reports;
  final api.ApprovalsClient _approvals;
  final api.CollectionsClient _collections;

  @override
  Future<Result<AgentHome>> agentHome() async {
    try {
      return Ok(agentHomeFromDto(await _client.homeControllerAgent()));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<GodownHome>> godownHome() async {
    try {
      return Ok(godownHomeFromDto(await _client.homeControllerGodown()));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<OwnerHome>> ownerHome({required bool approvals, required bool handovers}) async {
    try {
      // Started together, awaited in turn.
      final dashboard = _reports.reportsControllerDashboard();
      final approvalCount = approvals ? _approvals.approvalsControllerCount() : null;
      final handoverPage = handovers ? _collections.cashHandoversControllerList(status: api.Status6.pending) : null;
      return Ok(
        ownerHomeFromDto(
          await dashboard,
          approvalsWaiting: (await approvalCount)?.pending,
          handoversWaiting: (await handoverPage)?.items.length,
        ),
      );
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<List<AgentDay>>> agentsToday() async {
    try {
      final out = await _client.homeControllerAgentsToday();
      return Ok([for (final a in out.agents) agentDayFromDto(a)]);
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

OwnerHome ownerHomeFromDto(api.DashboardDtoOutput d, {int? approvalsWaiting, int? handoversWaiting}) => OwnerHome(
  sales: d.sales?.total,
  bills: d.sales?.bills,
  collected: d.collections?.total,
  outstanding: d.outstanding?.total,
  overdue: d.outstanding?.overdue,
  approvalsWaiting: approvalsWaiting,
  handoversWaiting: handoversWaiting,
);

AgentDay agentDayFromDto(api.Agents a) => AgentDay(
  userId: a.userId,
  name: a.name,
  collected: a.collected.total,
  cash: a.collected.byMethod.cash,
  upi: a.collected.byMethod.upi,
  bankTransfer: a.collected.byMethod.bankTransfer,
  cheque: a.collected.byMethod.cheque,
  visits: a.visits,
  cashInBag: a.cashInBag,
  handoverPending: a.handoverPending,
);

GodownHome godownHomeFromDto(api.GodownHomeDtoOutput h) => GodownHome(
  toDispatch: h.toDispatch,
  arrivalsToday: h.arrivalsToday,
  lowStock: [
    for (final l in h.lowStock)
      LowStockItem(name: l.name, unit: l.stockUnit, quantity: l.quantity, level: l.lowStockLevel),
  ],
  wastageToday: {for (final w in h.wastageToday.byUnit) w.unit.json ?? '': w.quantity},
  wastagePending: h.wastageToday.pendingApproval,
  returnsToInspect: h.returnsToInspect,
);

AgentHome agentHomeFromDto(api.AgentHomeDtoOutput h) => AgentHome(
  dueOnMyShops: h.dueOnMyShops,
  collectedToday: CollectedToday(
    total: h.collectedToday.total,
    cash: h.collectedToday.byMethod.cash,
    upi: h.collectedToday.byMethod.upi,
    bankTransfer: h.collectedToday.byMethod.bankTransfer,
    cheque: h.collectedToday.byMethod.cheque,
  ),
  cashToHandOver: h.cashToHandOver,
  handoverPending: h.handoverPending,
  dueToday: [
    for (final d in h.dueToday)
      DueShop(
        customerId: d.customerId,
        name: d.name,
        area: d.area,
        outstanding: d.outstanding,
        due: d.due,
        overdue: d.overdue,
        promisedToday: d.promisedToday,
      ),
  ],
);
