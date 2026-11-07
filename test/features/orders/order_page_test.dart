import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/orders/presentation/pages/order_page.dart';
import 'package:mocktail/mocktail.dart';

import 'order_test.dart';

void main() {
  testWidgets('acceptance step 9: Recent → 5 bags → Check says it needs approval → Waiting for approval', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.6;
    addTearDown(tester.view.reset);
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
    ).thenAnswer((_) async => const Ok(PlacedOrder(number: 'ORD-0007', waiting: true, total: 750000)));

    await tester.pumpWidget(
      RepositoryProvider<OrdersRepository>.value(
        value: r,
        child: MaterialApp(
          theme: AppTheme.light(),
          home: OrderPage(target: target, now: wednesday),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('₹5,000'), findsOneWidget); // credit left
    expect(find.text('Repeat last order (Mon 2 Nov, 2)'), findsOneWidget);

    await tester.tap(find.widgetWithText(ActionChip, 'Onion'));
    await tester.pumpAndSettle();
    expect(find.text('Onion · ₹30/kg'), findsOneWidget); // locked: text, no rate field
    expect(find.text('Rate per kg'), findsNothing);
    await tester.enterText(find.widgetWithText(TextField, 'Qty (Bag)'), '5');
    await tester.pumpAndSettle();
    expect(find.text('250'), findsOneWidget); // ≈ kg from the last order
    await tester.tap(find.text('ADD'));
    await tester.pumpAndSettle();
    expect(find.text('5 Bag ≈ 250 kg · ₹30/kg'), findsOneWidget);

    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    expect(find.text('Order ≈ ₹7,500 for Malabar Traders'), findsOneWidget);
    expect(find.text('Final amount after weighing'), findsOneWidget);
    expect(find.text('Needs approval: over limit by ₹2,500'), findsOneWidget);

    await tester.tap(find.text('SEND'));
    await tester.pumpAndSettle();
    expect(find.text('Waiting for approval'), findsOneWidget);
    expect(find.text('ORD-0007 · the owner decides'), findsOneWidget);
  });
}
