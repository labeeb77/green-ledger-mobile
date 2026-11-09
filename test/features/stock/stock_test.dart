import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/stock/data/stock_repository_impl.dart';
import 'package:green_ledger_mobile/features/stock/domain/stock.dart';
import 'package:green_ledger_mobile/features/stock/presentation/pages/stock_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';

class _MockRepository extends Mock implements StockRepository;

final StockItem onion = stockItemFromDto(
  api.StockRowDtoOutput.fromJson({
    'productId': 'p1',
    'name': 'Onion',
    'nameMl': 'ഉള്ളി',
    'stockUnit': 'kg',
    'active': true,
    'quantity': '340.000',
    'packs': [
      {'packUnitId': 'bag', 'name': 'Bag', 'count': '7.000', 'estimated': false},
    ],
    'lowStockLevel': '100.000',
    'lowStock': false,
    'wastageToday': '0.000',
  }),
);

final StockItem potato = stockItemFromDto(
  api.StockRowDtoOutput.fromJson({
    'productId': 'p3',
    'name': 'Potato',
    'stockUnit': 'kg',
    'active': true,
    'quantity': '350.000',
    'packs': [
      {'packUnitId': 'bag', 'name': 'Bag', 'count': '7.000', 'estimated': true},
    ],
    'lowStock': false,
    'wastageToday': '0.000',
  }),
);

const garlic = StockItem(
  productId: 'p2',
  name: 'Garlic',
  unit: 'kg',
  quantity: '-8.500',
  packs: [],
  lowStock: true,
  wastageToday: '1.500',
);

void main() {
  test('on hand reads "340 kg (7 Bag)", estimated packs "≈ 7 Bag"; negative stock shows as it is', () {
    expect(onion.onHand, '340 kg (7 Bag)');
    expect(potato.onHand, '350 kg (≈ 7 Bag)');
    expect(garlic.onHand, '-8.5 kg');
    expect(garlic.negative, isTrue);
  });

  testWidgets('search and the Low stock filter; no cost anywhere', (tester) async {
    final repository = _MockRepository();
    when(repository.onHand).thenAnswer((_) async => Ok([garlic, onion]));
    await tester.pumpWidget(
      RepositoryProvider<StockRepository>.value(
        value: repository,
        child: withDrafts(MaterialApp(theme: AppTheme.light(), home: const StockPage())),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('340 kg (7 Bag)'), findsOneWidget);
    expect(find.text('Wastage today 1.5 kg'), findsOneWidget);
    expect(find.textContaining('₹'), findsNothing);

    await tester.tap(find.text('Low stock (1)'));
    await tester.pump();
    expect(find.text('Onion'), findsNothing);
    expect(find.text('Garlic'), findsOneWidget);

    await tester.tap(find.text('Low stock (1)'));
    await tester.enterText(find.byType(TextField), 'oni');
    await tester.pump();
    expect(find.text('Onion'), findsOneWidget);
    expect(find.text('Garlic'), findsNothing);
  });
}
