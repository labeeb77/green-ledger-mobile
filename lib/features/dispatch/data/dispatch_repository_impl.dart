import 'dart:convert';

import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';

class DispatchRepositoryImpl implements DispatchRepository {
  DispatchRepositoryImpl({required this._orders, required this._products, required this._drafts});

  final api.OrdersClient _orders;
  final api.ProductsClient _products;
  final DraftStore _drafts;

  @override
  Future<Result<List<DispatchOrder>>> toDispatch() => _run(() async {
    final orders = await _orders.ordersControllerToDispatch();
    final products = await _products.productsControllerList();
    // Order lines name the pack; its size (for fixed packs) comes from the product.
    final sizes = {
      for (final p in products)
        for (final u in p.packUnits)
          if (u.sizeType.json == 'fixed') u.id: u.size,
    };
    return [for (final o in orders) dispatchOrderFromDto(o, sizes)];
  });

  @override
  Future<Result<DispatchResult>> dispatch({
    required DispatchOrder order,
    required List<SentLine> lines,
    required String dispatchDate,
    required String idempotencyKey,
    String vehicleNo = '',
  }) async {
    final body = dispatchBodyFor(orderId: order.id, lines: lines, dispatchDate: dispatchDate, vehicleNo: vehicleNo);
    final result = await _post(body, idempotencyKey);
    switch (result) {
      case Ok():
        await _drafts.remove(idempotencyKey);
      case Err(:final failure) when failure.kind == FailureKind.network:
        await _drafts.keep(
          Draft(
            id: idempotencyKey,
            kind: DraftKind.dispatch,
            title: 'Dispatch ${order.number}',
            subtitle: order.shop,
            payload: jsonEncode(body),
            createdAt: DateTime.now(),
          ),
        );
      case Err():
    }
    return result;
  }

  /// SEND AGAIN from the Drafts screen: the same body and key as the first try.
  Future<Result<String>> sendDraft(Draft draft) async {
    final body = api.CreateDispatchDto.fromJson(jsonDecode(draft.payload) as Map<String, Object?>);
    return switch (await _post(body, draft.id)) {
      Ok() => const Ok('Dispatched, bill created'),
      Err(:final failure) => Err(failure),
    };
  }

  Future<Result<DispatchResult>> _post(api.CreateDispatchDto body, String key) => _run(() async {
    final r = await _orders.dispatchesControllerCreate(idempotencyKey: key, body: body);
    return DispatchResult(billNumber: r.billNumber, orderDone: r.orderStatus.json == 'dispatched');
  });

  static Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Ok(await call());
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

DispatchOrder dispatchOrderFromDto(api.OrderDtoOutput o, Map<String, String?> packSizes) => DispatchOrder(
  id: o.id,
  number: o.number,
  date: o.orderDate,
  shop: o.customer.name,
  agent: o.agent?.name,
  notes: o.notes,
  lines: [
    for (final l in o.lines)
      if (!l.closed)
        DispatchLine(
          id: l.id,
          product: l.product.name,
          stockUnit: l.product.stockUnit,
          packName: l.packUnit?.name,
          packSize: l.packUnit == null ? null : packSizes[l.packUnit!.id],
          orderedPacks: l.packCount,
          ordered: l.quantity,
          dispatched: l.dispatchedQuantity,
          pending: l.pendingQuantity,
        ),
  ],
);

api.CreateDispatchDto dispatchBodyFor({
  required String orderId,
  required List<SentLine> lines,
  required String dispatchDate,
  String vehicleNo = '',
}) => api.CreateDispatchDto(
  orderId: orderId,
  dispatchDate: dispatchDate,
  vehicleNo: vehicleNo.trim().isEmpty ? null : vehicleNo.trim(),
  lines: [
    for (final l in lines)
      api.Lines16(orderLineId: l.lineId, quantity: l.quantity, packCount: l.packCount, complete: l.complete),
  ],
);
