import 'dart:convert';

import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';

class OrdersRepositoryImpl implements OrdersRepository {
  OrdersRepositoryImpl({required this._orders, required this._products, required this._pricing, required this._drafts});

  final api.OrdersClient _orders;
  final api.ProductsClient _products;
  final api.PricingClient _pricing;
  final DraftStore _drafts;

  /// Orders read for Recent, Repeat and unit history.
  static const historySize = 10;

  @override
  Future<Result<List<OrderProduct>>> products() => _run(() async {
    final rows = await _products.productsControllerList(active: api.Active.valueTrue);
    return [for (final p in rows) productFromDto(p)]..sort((a, b) => a.name.compareTo(b.name));
  });

  @override
  Future<Result<Quote>> quote({required String productId, required String customerId, String? packUnitId}) =>
      _run(() async {
        final q = await _pricing.pricingControllerQuote(
          productId: productId,
          customerId: customerId,
          packUnitId: packUnitId,
        );
        return Quote(
          rate: q.rate,
          ratePer: q.ratePer.json == 'pack' ? RatePer.pack : RatePer.stockUnit,
          minimumRate: q.minimumRate,
          belowMinimum: q.belowMinimum,
        );
      });

  @override
  Future<Result<List<PastOrder>>> history(String customerId) =>
      _run(() async => _past(await _orders.ordersControllerList(customerId: customerId, limit: historySize)));

  @override
  Future<Result<List<PastOrder>>> myOrders() => _run(() async => _past(await _orders.ordersControllerList()));

  static List<PastOrder> _past(api.OrderPageDtoOutput page) => [
    for (final o in page.items)
      if (o.status.json != 'cancelled' && o.status.json != 'rejected')
        PastOrder(
          date: o.orderDate,
          lines: [
            for (final l in o.lines)
              PastLine(
                productId: l.product.id,
                packUnitId: l.packUnit?.id,
                packCount: l.packCount,
                quantity: l.quantity,
              ),
          ],
        ),
  ];

  @override
  Future<Result<PlacedOrder>> place({
    required String customerId,
    required String shopName,
    required String orderDate,
    required List<OrderLine> lines,
    required String idempotencyKey,
    String note = '',
  }) async {
    final body = orderBodyFor(customerId: customerId, orderDate: orderDate, lines: lines, note: note);
    final result = await _post(body, idempotencyKey);
    switch (result) {
      case Ok():
        await _drafts.remove(idempotencyKey);
      case Err(:final failure) when failure.kind == FailureKind.network:
        await _drafts.keep(
          Draft(
            id: idempotencyKey,
            kind: DraftKind.order,
            title: 'Order ≈ ${formatMoney(lines.fold(0, (sum, l) => sum + l.amount))}',
            subtitle: shopName,
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
    final body = api.CreateOrderDto.fromJson(jsonDecode(draft.payload) as Map<String, Object?>);
    return switch (await _post(body, draft.id)) {
      Ok(:final value) => Ok(value.waiting ? '${value.number} waiting for approval' : 'Sent ${value.number}'),
      Err(:final failure) => Err(failure),
    };
  }

  Future<Result<PlacedOrder>> _post(api.CreateOrderDto body, String idempotencyKey) => _run(() async {
    final o = await _orders.ordersControllerCreate(idempotencyKey: idempotencyKey, body: body);
    return PlacedOrder(number: o.number, waiting: o.status.json == 'pending_approval', total: o.estimatedTotal ?? 0);
  });

  static Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Ok(await call());
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

OrderProduct productFromDto(api.ProductDtoOutput p) {
  final stockUnit = p.stockUnit.json ?? 'kg';
  return OrderProduct(
    id: p.id,
    name: p.nameEn,
    stockUnit: stockUnit,
    units: [
      OrderUnit(name: stockUnit),
      for (final u in p.packUnits)
        if (u.active) OrderUnit(name: u.name, packUnitId: u.id, size: u.size, variable: u.sizeType.json == 'variable'),
    ],
  );
}

/// The request: a fixed pack sends its count (the server works out the quantity), a
/// variable pack its count and estimated quantity, the stock unit its quantity.
api.CreateOrderDto orderBodyFor({
  required String customerId,
  required String orderDate,
  required List<OrderLine> lines,
  String note = '',
}) => api.CreateOrderDto(
  customerId: customerId,
  orderDate: orderDate,
  notes: note.trim().isEmpty ? null : note.trim(),
  lines: [
    for (final l in lines)
      api.Lines15(
        productId: l.product.id,
        rate: l.rate,
        ratePer: l.ratePer == RatePer.pack ? api.RatePer.pack : api.RatePer.stockUnit,
        packUnitId: l.unit.packUnitId,
        packCount: l.packCount,
        quantity: l.unit.fixed ? null : l.quantity,
      ),
  ],
);
