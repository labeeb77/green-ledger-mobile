import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._client);

  final api.HomeClient _client;

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
}

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
