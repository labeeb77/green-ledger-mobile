import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/shops/presentation/pages/shops_page.dart';
import 'package:mocktail/mocktail.dart';

class _MockRepository extends Mock implements ShopsRepository;

Future<void> _pump(WidgetTester tester, List<Shop> shops) async {
  final repository = _MockRepository();
  when(repository.shops).thenAnswer((_) async => Ok(shops));
  await tester.pumpWidget(
    RepositoryProvider<ShopsRepository>.value(
      value: repository,
      child: MaterialApp(theme: AppTheme.light(), home: const ShopsPage()),
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
}
