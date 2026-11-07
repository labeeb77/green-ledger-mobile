import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/orders/data/orders_repository_impl.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/orders/presentation/bloc/order_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockOrdersRepository extends Mock implements OrdersRepository;

const bag = OrderUnit(name: 'Bag', packUnitId: 'bag', variable: true);
const crate = OrderUnit(name: 'Crate', packUnitId: 'crate', size: '25.000');
const onion = OrderProduct(
  id: 'onion',
  name: 'Onion',
  stockUnit: 'kg',
  units: [
    OrderUnit(name: 'kg'),
    bag,
  ],
);
const tomato = OrderProduct(
  id: 'tomato',
  name: 'Tomato',
  stockUnit: 'kg',
  units: [
    OrderUnit(name: 'kg'),
    crate,
  ],
);
const garlic = OrderProduct(
  id: 'garlic',
  name: 'Garlic',
  stockUnit: 'kg',
  units: [OrderUnit(name: 'kg')],
);

const target = OrderTarget(customerId: 'c1', name: 'Malabar Traders', outstanding: 4500000, creditLimit: 5000000);

/// Monday: 5 bags of onion weighed 250 kg, 4 crates of tomato.
const lastOrder = PastOrder(
  date: '2026-11-02',
  lines: [
    PastLine(productId: 'onion', packUnitId: 'bag', packCount: '5.000', quantity: '250.000'),
    PastLine(productId: 'tomato', packUnitId: 'crate', packCount: '4.000', quantity: '100.000'),
  ],
);

final wednesday = DateTime.utc(2026, 11, 4, 4, 30);

void stubQuotes(MockOrdersRepository r) {
  when(
    () => r.quote(
      productId: any(named: 'productId'),
      customerId: any(named: 'customerId'),
      packUnitId: any(named: 'packUnitId'),
    ),
  ).thenAnswer((i) async {
    final product = i.namedArguments[#productId] as String;
    return Ok(switch (product) {
      'onion' => const Quote(rate: 3000, ratePer: RatePer.stockUnit, minimumRate: 2800),
      'tomato' => const Quote(rate: 2400, ratePer: RatePer.stockUnit),
      _ => const Quote(rate: null, ratePer: RatePer.stockUnit),
    });
  });
}

MockOrdersRepository repository({List<PastOrder> history = const [lastOrder]}) {
  final r = MockOrdersRepository();
  when(r.products).thenAnswer((_) async => const Ok([garlic, onion, tomato]));
  when(() => r.history(any())).thenAnswer((_) async => Ok(history));
  when(r.myOrders).thenAnswer((_) async => const Ok([]));
  stubQuotes(r);
  return r;
}

void main() {
  group('rules for display', () {
    test('amounts round half up like the server; fixed packs × size', () {
      expect(lineAmount('2.505', 1000), 2505);
      expect(lineAmount('0.333', 150), 50); // 49.95 → 50
      expect(packsTimes('4', '25.000'), '100.000');
    });

    test('a variable bag is estimated from the shop’s last order of it', () {
      expect(perPackEstimate(const [lastOrder], 'onion', 'bag'), '50.000');
      expect(perPackEstimate(const [lastOrder], 'onion', 'sack'), isNull);
    });

    test('the unit the shop used last, else the first pack', () {
      expect(defaultUnit(onion, const [lastOrder]), bag);
      expect(defaultUnit(tomato, const []), crate);
      expect(defaultUnit(garlic, const []).name, 'kg');
    });

    test('Recent: the shop’s products, else the most ordered of mine', () {
      expect(recentProductIds(const [lastOrder], const []), ['onion', 'tomato']);
      const mine = [
        PastOrder(
          date: '2026-11-01',
          lines: [PastLine(productId: 'garlic', quantity: '1.000')],
        ),
        PastOrder(
          date: '2026-11-02',
          lines: [
            PastLine(productId: 'garlic', quantity: '1.000'),
            PastLine(productId: 'tomato', quantity: '1.000'),
          ],
        ),
      ];
      expect(recentProductIds(const [], mine), ['garlic', 'tomato']);
    });

    test('over the credit limit by', () {
      expect(overLimitByFor(outstanding: 4500000, creditLimit: 5000000, total: 750000), 250000);
      expect(overLimitByFor(outstanding: 0, creditLimit: 5000000, total: 750000), 0);
    });

    test('lines read like the paper slip', () {
      const line = OrderLine(
        product: onion,
        unit: bag,
        packCount: '5.000',
        quantity: '250.000',
        rate: 3000,
        ratePer: RatePer.stockUnit,
      );
      expect(line.describe, '5 Bag ≈ 250 kg');
      expect(line.amount, 750000);
      const crates = OrderLine(
        product: tomato,
        unit: crate,
        packCount: '4.000',
        quantity: '100.000',
        rate: 2400,
        ratePer: RatePer.stockUnit,
      );
      expect(crates.describe, '4 Crate = 100 kg');
    });
  });

  test('the body: fixed packs send the count only, variable packs the estimate too', () {
    final body = orderBodyFor(
      customerId: 'c1',
      orderDate: '2026-11-04',
      note: ' Morning delivery ',
      lines: const [
        OrderLine(
          product: onion,
          unit: bag,
          packCount: '5.000',
          quantity: '250.000',
          rate: 3000,
          ratePer: RatePer.stockUnit,
        ),
        OrderLine(
          product: tomato,
          unit: crate,
          packCount: '4.000',
          quantity: '100.000',
          rate: 2400,
          ratePer: RatePer.stockUnit,
        ),
        OrderLine(
          product: garlic,
          unit: OrderUnit(name: 'kg'),
          quantity: '2.500',
          rate: 12000,
          ratePer: RatePer.stockUnit,
        ),
      ],
    );
    final json = jsonDecode(jsonEncode(body)) as Map<String, Object?>;
    expect(json['notes'], 'Morning delivery');
    expect(json['orderDate'], '2026-11-04');
    final lines = (json['lines']! as List).cast<Map<String, Object?>>();
    expect(lines[0], containsPair('quantity', '250.000'));
    expect(lines[0], containsPair('packCount', '5.000'));
    expect(lines[1]['quantity'], isNull);
    expect(lines[1], containsPair('packUnitId', 'crate'));
    expect(lines[2]['packUnitId'], isNull);
    expect(lines[2], containsPair('ratePer', 'stock_unit'));
  });

  test('maps a product: stock unit first, active packs after', () {
    final p = productFromDto(
      api.ProductDtoOutput.fromJson({
        'id': 'onion',
        'nameEn': 'Onion',
        'nameMl': null,
        'category': null,
        'stockUnit': 'kg',
        'minimumRate': 2800,
        'lowStockLevel': null,
        'active': true,
        'packUnits': [
          {'id': 'bag', 'name': 'Bag', 'sizeType': 'variable', 'size': null, 'active': true},
          {'id': 'old', 'name': 'Sack', 'sizeType': 'fixed', 'size': '40.000', 'active': false},
        ],
        'grades': <Object?>[],
      }),
    );
    expect([for (final u in p.units) (u.name, u.variable)], [('kg', false), ('Bag', true)]);
  });

  group('OrderCubit', () {
    blocTest<OrderCubit, OrderState>(
      'Repeat last order copies the lines at today’s rates',
      build: () => OrderCubit(repository(), target, now: wednesday),
      act: (cubit) async {
        await cubit.load();
        await cubit.repeatLast();
      },
      verify: (cubit) {
        expect([for (final l in cubit.state.lines) l.describe], ['5 Bag ≈ 250 kg', '4 Crate = 100 kg']);
        expect(cubit.state.total, 750000 + 240000);
        expect(cubit.state.recent, ['onion', 'tomato']);
      },
    );

    blocTest<OrderCubit, OrderState>(
      'a variable bag: packs fill the estimate from history; the agent can’t change the rate',
      build: () => OrderCubit(repository(), target, now: wednesday),
      act: (cubit) async {
        await cubit.load();
        await cubit.openProduct(onion);
        cubit
          ..setQty('3')
          ..setRate(1);
      },
      verify: (cubit) {
        final e = cubit.state.editor!;
        expect(e.unit, bag);
        expect(e.estimate, '150');
        expect(e.rate, 3000);
        expect(e.line?.amount, 450000);
      },
    );

    blocTest<OrderCubit, OrderState>(
      'no rate today blocks ADD with a plain message',
      build: () => OrderCubit(repository(), target, now: wednesday),
      act: (cubit) async {
        await cubit.load();
        await cubit.openProduct(garlic);
        cubit
          ..setQty('2')
          ..addLine();
      },
      verify: (cubit) {
        expect(cubit.state.editor?.problem, 'No rate for Garlic today — ask the owner');
        expect(cubit.state.lines, isEmpty);
      },
    );

    blocTest<OrderCubit, OrderState>(
      'acceptance step 9: over the limit, the order waits; the date and key are kept for SEND AGAIN',
      build: () {
        final r = repository();
        when(
          () => r.place(
            customerId: any(named: 'customerId'),
            shopName: any(named: 'shopName'),
            orderDate: any(named: 'orderDate'),
            lines: any(named: 'lines'),
            idempotencyKey: any(named: 'idempotencyKey'),
            note: any(named: 'note'),
          ),
        ).thenAnswer((_) async => const Err(AppFailure(kind: FailureKind.network, message: 'offline')));
        return OrderCubit(r, target, now: wednesday, idempotencyKey: 'k1');
      },
      act: (cubit) async {
        await cubit.load();
        await cubit.repeatLast();
        cubit
          ..toggleNote('Morning delivery')
          ..setNoteText('gate 2')
          ..next();
        expect(cubit.overLimitBy, 4500000 + 990000 - 5000000);
        await cubit.place();
      },
      verify: (cubit) {
        expect(cubit.state.step, OrderStep.check);
        expect(cubit.state.failure?.message, 'No internet. Your entry is kept.');
        expect(cubit.state.idempotencyKey, 'k1');
        expect(cubit.state.note, 'Morning delivery, gate 2');
        expect(cubit.state.orderDate, '2026-11-04');
      },
    );

    test('owner/manager see no approval hint and may change the rate', () async {
      final cubit = OrderCubit(repository(), target, canEditRate: true, now: wednesday);
      await cubit.load();
      await cubit.openProduct(tomato);
      cubit
        ..setQty('4')
        ..setRate(2000)
        ..addLine();
      expect(cubit.state.lines.single.rate, 2000);
      expect(cubit.overLimitBy, 0);
    });
  });
}
