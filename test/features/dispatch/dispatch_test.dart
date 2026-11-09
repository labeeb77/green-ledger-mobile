import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/dispatch/data/dispatch_repository_impl.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';
import 'package:green_ledger_mobile/features/dispatch/presentation/bloc/dispatch_cubits.dart';
import 'package:green_ledger_mobile/features/dispatch/presentation/pages/dispatch_order_page.dart';
import 'package:mocktail/mocktail.dart';

class _MockRepository extends Mock implements DispatchRepository;

const onionBags = DispatchLine(
  id: 'l1',
  product: 'Onion',
  stockUnit: 'kg',
  packName: 'Bag',
  orderedPacks: '5.000',
  ordered: '250.000',
  pending: '250.000',
);
const tomatoCrates = DispatchLine(
  id: 'l2',
  product: 'Tomato',
  stockUnit: 'kg',
  packName: 'Crate',
  packSize: '25.000',
  orderedPacks: '4.000',
  ordered: '100.000',
  pending: '100.000',
);
const garlic = DispatchLine(
  id: 'l3',
  product: 'Garlic',
  stockUnit: 'kg',
  ordered: '60.000',
  dispatched: '20.000',
  pending: '40.000',
);

const order = DispatchOrder(
  id: 'o1',
  number: 'ORD-0007',
  date: '2026-11-07',
  shop: 'Malabar Traders',
  agent: 'Ravi',
  lines: [onionBags, tomatoCrates, garlic],
);

Map<String, Object?> lineJson(String id, {bool closed = false, String? packUnitId}) => {
  'id': id,
  'product': {'id': 'p-$id', 'name': 'Tomato', 'stockUnit': 'kg'},
  'packUnit': packUnitId == null ? null : {'id': packUnitId, 'name': 'Crate'},
  'packCount': packUnitId == null ? null : '4.000',
  'quantity': '100.000',
  'dispatchedQuantity': '0.000',
  'pendingQuantity': '100.000',
  'closed': closed,
  'ratePer': 'stock_unit',
  'rate': 2400,
};

void main() {
  test('what was ordered, in the godown’s words', () {
    expect(onionBags.orderedText, '5 Bag ≈ 250 kg');
    expect(tomatoCrates.orderedText, '4 Crate = 100 kg');
    expect(garlic.orderedText, '60 kg (40 kg left)');
  });

  test('Load list totals across orders; groups by agent, counter orders last', () {
    const other = DispatchOrder(
      id: 'o2',
      number: 'ORD-0008',
      date: '2026-11-07',
      shop: 'Fresh Mart',
      lines: [onionBags, garlic],
    );
    expect(loadList(const [order, other]), ['Garlic 80 kg', 'Onion 10 Bag', 'Tomato 4 Crate']);
    expect(byAgent(const [other, order]).keys, ['Ravi', 'No agent']);
  });

  test('maps an order: closed lines dropped, fixed pack sizes from the products', () {
    final o = dispatchOrderFromDto(
      api.OrderDtoOutput.fromJson({
        'id': 'o1',
        'number': 'ORD-0007',
        'orderDate': '2026-11-07',
        'customer': {'id': 'c1', 'name': 'Malabar Traders'},
        'agent': {'id': 'u5', 'name': 'Ravi'},
        'status': 'confirmed',
        'estimatedTotal': 990000,
        'notes': 'Morning delivery',
        'lines': [lineJson('a', packUnitId: 'crate'), lineJson('b', closed: true)],
        'bills': <Object?>[],
        'approvalId': null,
        'createdAt': '2026-11-07T05:00:00.000Z',
        'cancelReason': null,
      }),
      {'crate': '25.000'},
    );
    expect(o.lines.single.packSize, '25.000');
    expect((o.agent, o.notes), ('Ravi', 'Morning delivery'));
  });

  group('DispatchOrderCubit', () {
    test('fixed packs fill the net; an empty line is not sent; short lines close unless kept open', () {
      final cubit = DispatchOrderCubit(_MockRepository(), order)..setPacks('l2', '3');
      expect(cubit.entryFor('l2').net, '75');
      cubit
        ..setPacks('l1', '5')
        ..setNet('l1', '248');
      expect(cubit.sentLines.map((s) => (s.lineId, s.quantity, s.packCount, s.complete)), [
        ('l1', '248.000', '5.000', true),
        ('l2', '75.000', '3.000', true),
      ]);
      expect(cubit.shortLines.map((l) => l.id), ['l1', 'l2']);
      cubit.sendRestLater('l2', later: true);
      expect(cubit.sentLines.last.complete, isFalse);
      cubit.sendRestLater('l2', later: false);
      expect(cubit.sentLines.last.complete, isTrue);
    });
  });

  testWidgets('Check asks per short line with Close preselected; Dispatched with no amount', (tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.6;
    addTearDown(tester.view.reset);
    final r = _MockRepository();
    when(
      () => r.dispatch(
        order: order,
        lines: any(named: 'lines'),
        dispatchDate: any(named: 'dispatchDate'),
        idempotencyKey: any(named: 'idempotencyKey'),
        vehicleNo: any(named: 'vehicleNo'),
      ),
    ).thenAnswer((_) async => const Ok(DispatchResult(billNumber: 'B-0042', orderDone: false)));
    await tester.pumpWidget(
      RepositoryProvider<DispatchRepository>.value(
        value: r,
        child: MaterialApp(
          theme: AppTheme.light(),
          home: const DispatchOrderPage(order: order),
        ),
      ),
    );
    await tester.enterText(find.widgetWithText(TextField, 'Crate'), '4');
    await tester.pump();
    expect(find.byIcon(Icons.check), findsOneWidget); // filled from the packs
    await tester.enterText(find.widgetWithText(TextField, 'Net kg').last, '30');
    await tester.pump();
    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    expect(find.text('10 kg left'), findsOneWidget); // 40 kg pending, 30 kg sent
    expect(find.text('Not sent now: Onion'), findsOneWidget);
    final segmented = tester.widget<SegmentedButton<bool>>(find.byType(SegmentedButton<bool>));
    expect(segmented.selected, {false}); // Close – no more
    await tester.tap(find.text('Send rest later'));
    await tester.pump();

    await tester.tap(find.text('DISPATCH'));
    await tester.pumpAndSettle();
    expect(find.text('Dispatched'), findsOneWidget);
    expect(find.text('Bill B-0042 created · The rest stays on the order'), findsOneWidget);
    expect(find.textContaining('₹'), findsNothing);
    final sent =
        verify(
              () => r.dispatch(
                order: order,
                lines: captureAny(named: 'lines'),
                dispatchDate: any(named: 'dispatchDate'),
                idempotencyKey: any(named: 'idempotencyKey'),
                vehicleNo: any(named: 'vehicleNo'),
              ),
            ).captured.single
            as List<SentLine>;
    expect(sent.map((s) => (s.lineId, s.quantity, s.complete)), [('l2', '100.000', true), ('l3', '30.000', false)]);
  });
}
