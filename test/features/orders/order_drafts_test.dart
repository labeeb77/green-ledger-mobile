import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/orders/data/orders_repository_impl.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';
import 'order_test.dart' show bag, onion;

class _MockOrders extends Mock implements api.OrdersClient;

class _MockProducts extends Mock implements api.ProductsClient;

class _MockPricing extends Mock implements api.PricingClient;

class _MockOrder extends Mock implements api.OrderDtoOutput;

void main() {
  setUpAll(() => registerFallbackValue(const api.CreateOrderDto(customerId: '', lines: [])));

  test('offline: kept as a draft; SEND AGAIN sends the same body and key', () async {
    final orders = _MockOrders();
    final drafts = MemoryDraftStore();
    final repository = OrdersRepositoryImpl(
      orders: orders,
      products: _MockProducts(),
      pricing: _MockPricing(),
      drafts: drafts,
    );
    when(
      () => orders.ordersControllerCreate(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenThrow(DioException(requestOptions: RequestOptions(), type: DioExceptionType.connectionError));

    await repository.place(
      customerId: 'c1',
      shopName: 'Malabar Traders',
      orderDate: '2026-11-04',
      lines: const [
        OrderLine(
          product: onion,
          unit: bag,
          packCount: '5.000',
          quantity: '250.000',
          rate: 3000,
          ratePer: RatePer.stockUnit,
        ),
      ],
      idempotencyKey: 'k1',
    );
    final draft = drafts.drafts.single;
    expect((draft.kind, draft.title, draft.subtitle), (DraftKind.order, 'Order ≈ ₹7,500', 'Malabar Traders'));

    final placed = _MockOrder();
    when(() => placed.number).thenReturn('ORD-0007');
    when(() => placed.status).thenReturn(api.OrderDtoOutputStatus.pendingApproval);
    when(() => placed.estimatedTotal).thenReturn(750000);
    when(
      () => orders.ordersControllerCreate(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenAnswer((_) async => placed);
    expect(
      await repository.sendDraft(draft),
      isA<Ok<String>>().having((r) => r.value, 'value', 'ORD-0007 waiting for approval'),
    );
    final bodies = verify(
      () => orders.ordersControllerCreate(
        idempotencyKey: 'k1',
        body: captureAny(named: 'body'),
      ),
    ).captured;
    expect(jsonEncode(bodies[1]), jsonEncode(bodies[0]));
  });
}
