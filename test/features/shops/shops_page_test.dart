import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/shops/presentation/pages/shops_page.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/share_statement_button.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';

class _MockRepository extends Mock implements ShopsRepository;

Future<void> _pump(WidgetTester tester, List<Shop> shops, {DateTime? updatedAt}) async {
  final repository = _MockRepository();
  when(repository.shops).thenAnswer((_) async => Ok(ShopList(shops, updatedAt: updatedAt)));
  await tester.pumpWidget(
    RepositoryProvider<ShopsRepository>.value(
      value: repository,
      child: withDrafts(MaterialApp(theme: AppTheme.light(), home: const ShopsPage())),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('groups shops by area with due, Overdue badge and last visit', (tester) async {
    await _pump(tester, const [
      Shop(id: 's1', name: 'Malabar Traders', area: 'Palayam', outstanding: 1300000, overdue: 500000, creditLimit: 0),
      Shop(id: 's2', name: 'Fresh Mart', area: 'Kallai', outstanding: 200000, overdue: 0, creditLimit: 0),
    ]);
    expect(find.text('Kallai (1)'), findsOneWidget);
    expect(find.text('Palayam (1)'), findsOneWidget);
    expect(find.text('₹13,000'), findsOneWidget);
    expect(find.text('Overdue'), findsOneWidget);
    expect(find.text('Not visited yet'), findsNWidgets(2));
    // Kallai comes before Palayam.
    expect(tester.getTopLeft(find.text('Fresh Mart')).dy, lessThan(tester.getTopLeft(find.text('Malabar Traders')).dy));
  });

  testWidgets('says so when no shop is assigned', (tester) async {
    await _pump(tester, const []);
    expect(find.text('No shops assigned — ask your manager'), findsOneWidget);
  });

  testWidgets('offline, the kept list says when it was loaded', (tester) async {
    final at = DateTime.now();
    await _pump(tester, const [
      Shop(id: 's1', name: 'Malabar Traders', area: 'Palayam', outstanding: 0, overdue: 0, creditLimit: 0),
    ], updatedAt: at);
    expect(find.text(updatedText(at)), findsOneWidget);
  });

  testWidgets('as a picker (Home COLLECT) a tap goes straight to Collect, then leaves picker mode', (tester) async {
    final repository = _MockRepository();
    when(repository.shops).thenAnswer(
      (_) async => const Ok(
        ShopList([
          Shop(id: 's1', name: 'Malabar Traders', area: 'Palayam', outstanding: 1300000, overdue: 0, creditLimit: 0),
        ]),
      ),
    );
    final router = GoRouter(
      initialLocation: '/customers?then=collect',
      routes: [
        GoRoute(
          path: '/customers',
          builder: (_, state) => ShopsPage(
            title: 'Customers',
            basePath: '/customers',
            pick: ShopPick.values.asNameMap()[state.uri.queryParameters['then']],
          ),
          routes: [
            GoRoute(
              path: ':id/collect',
              builder: (context, state) {
                final target = state.extra! as CollectTarget;
                return Scaffold(
                  body: TextButton(
                    onPressed: () => context.pop(true),
                    child: Text('Collect ${target.name} ${target.due}'),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
    await tester.pumpWidget(
      RepositoryProvider<ShopsRepository>.value(
        value: repository,
        child: withDrafts(MaterialApp.router(theme: AppTheme.light(), routerConfig: router)),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Pick a customer to collect from'), findsOneWidget);

    await tester.tap(find.text('Malabar Traders'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Collect Malabar Traders 1300000'));
    await tester.pumpAndSettle();
    expect(router.routeInformationProvider.value.uri.toString(), '/customers');
    expect(find.text('Pick a customer to collect from'), findsNothing);
  });

  test('statement periods: this month so far, last month, last three months', () {
    expect(statementPeriods(DateTime.utc(2026, 1, 7)), [
      (label: 'This month', from: '2026-01-01', to: '2026-01-07'),
      (label: 'Last month', from: '2025-12-01', to: '2025-12-31'),
      (label: 'Last 3 months', from: '2025-11-01', to: '2026-01-07'),
    ]);
  });
}
