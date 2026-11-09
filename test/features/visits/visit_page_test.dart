import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';
import 'package:green_ledger_mobile/features/visits/presentation/pages/visit_page.dart';
import 'package:mocktail/mocktail.dart';

import 'visit_test.dart' show MockVisitRepository, stubSave, wednesday;

void main() {
  setUpAll(() => registerFallbackValue(VisitOutcome.paid));

  Future<MockVisitRepository> pump(WidgetTester tester) async {
    final repository = MockVisitRepository();
    stubSave(repository, const Ok(null));
    await tester.pumpWidget(
      RepositoryProvider<VisitRepository>.value(
        value: repository,
        child: MaterialApp(
          theme: AppTheme.light(),
          home: VisitPage(customerId: 'c1', shopName: 'Malabar Traders', now: wednesday),
        ),
      ),
    );
    return repository;
  }

  bool saveEnabled(WidgetTester tester) =>
      tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'SAVE')).onPressed != null;

  testWidgets('Promised needs a date; This week saves Saturday', (tester) async {
    final repository = await pump(tester);
    expect(find.text('When will they pay?'), findsNothing);
    expect(saveEnabled(tester), isFalse);

    await tester.tap(find.text('Promised'));
    await tester.pump();
    expect(find.text('When will they pay?'), findsOneWidget);
    expect(find.text('Choose when they will pay'), findsNothing);
    await tester.tap(find.text('SAVE'));
    await tester.pump();
    expect(find.text('Choose when they will pay'), findsOneWidget);
    expect(find.text('Visit saved'), findsNothing);

    await tester.tap(find.text('This week'));
    await tester.pump();
    expect(find.text('Sat 14 Nov'), findsOneWidget);
    await tester.enterText(find.byType(TextFormField), 'After Friday market');
    await tester.tap(find.text('SAVE'));
    await tester.pumpAndSettle();

    expect(find.text('Visit saved'), findsOneWidget);
    expect(find.text('Promised · Sat 14 Nov'), findsOneWidget);
    verify(
      () => repository.save(
        customerId: 'c1',
        shopName: any(named: 'shopName'),
        visitDate: any(named: 'visitDate'),
        outcome: VisitOutcome.promised,
        idempotencyKey: any(named: 'idempotencyKey'),
        promiseDate: '2026-11-14',
        note: 'After Friday market',
      ),
    ).called(1);
  });

  testWidgets('Shop closed saves with no date', (tester) async {
    final repository = await pump(tester);
    await tester.tap(find.text('Shop closed'));
    await tester.pump();
    expect(find.text('When will they pay?'), findsNothing);
    await tester.tap(find.text('SAVE'));
    await tester.pumpAndSettle();
    expect(find.text('Visit saved'), findsOneWidget);
    verify(
      () => repository.save(
        customerId: 'c1',
        shopName: any(named: 'shopName'),
        visitDate: any(named: 'visitDate'),
        outcome: VisitOutcome.shopClosed,
        idempotencyKey: any(named: 'idempotencyKey'),
      ),
    ).called(1);
  });
}
