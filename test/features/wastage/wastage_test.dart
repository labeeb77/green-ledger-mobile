import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/wastage/data/wastage_repository_impl.dart';
import 'package:green_ledger_mobile/features/wastage/domain/wastage.dart';
import 'package:green_ledger_mobile/features/wastage/presentation/bloc/wastage_cubit.dart';
import 'package:green_ledger_mobile/features/wastage/presentation/pages/wastage_page.dart';
import 'package:mocktail/mocktail.dart';

class _MockRepository extends Mock implements WastageRepository;

const tomato = WastageProduct(id: 'tomato', name: 'Tomato', stockUnit: 'kg');
const banana = WastageProduct(id: 'banana', name: 'Banana', stockUnit: 'piece');

_MockRepository _repository(WastageResult result) {
  final r = _MockRepository();
  when(r.products).thenAnswer((_) async => const Ok([banana, tomato]));
  when(
    () => r.record(
      product: any(named: 'product'),
      quantity: any(named: 'quantity'),
      reason: any(named: 'reason'),
      entryDate: any(named: 'entryDate'),
      idempotencyKey: any(named: 'idempotencyKey'),
      photoPath: any(named: 'photoPath'),
    ),
  ).thenAnswer((_) async => Ok(result));
  return r;
}

Future<void> _type(WidgetTester tester, String digits) async {
  for (final d in digits.split('')) {
    await tester.tap(find.text(d).last);
    await tester.pump();
  }
}

void main() {
  setUpAll(() {
    registerFallbackValue(tomato);
    registerFallbackValue(WastageReason.rotten);
  });

  test('the body: one line with the reason and the entry date', () {
    final body = wastageBodyFor(
      productId: 'tomato',
      quantity: '10.000',
      reason: WastageReason.weightLoss,
      entryDate: '2026-11-07',
    );
    final json = jsonDecode(jsonEncode(body)) as Map<String, Object?>;
    expect(json['entryDate'], '2026-11-07');
    expect((json['lines']! as List).single, {
      'productId': 'tomato',
      'quantity': '10.000',
      'reason': 'weight_loss',
      'packUnitId': null,
      'packCount': null,
    });
  });

  test('quantity and reason are required; pieces are whole numbers', () {
    final cubit = WastageCubit(_repository(const WastageResult(waiting: false)))..chooseProduct(banana);
    expect(banana.decimals, 0);
    expect(cubit.state.problem, 'Enter the quantity');
    cubit.setQuantity('12');
    expect(cubit.state.problem, 'Choose the reason');
    cubit
      ..chooseReason(WastageReason.sample)
      ..next();
    expect(cubit.state.step, WastageStep.check);
    expect(cubit.state.amount, '12.000');
  });

  testWidgets('acceptance step 7: 10 kg tomato, Rotten, photo → Check → Saved; no value shown', (tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.6;
    addTearDown(tester.view.reset);
    final r = _repository(const WastageResult(waiting: false, number: 'W-0003'));
    await tester.pumpWidget(
      RepositoryProvider<WastageRepository>.value(
        value: r,
        child: MaterialApp(
          theme: AppTheme.light(),
          home: WastagePage(takePhoto: () async => '/tmp/rotten.jpg'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Tomato'));
    await tester.pumpAndSettle();
    await _type(tester, '10');
    expect(find.text('10 kg'), findsOneWidget);
    await tester.tap(find.text('Rotten'));
    await tester.tap(find.text('Photo'));
    await tester.pumpAndSettle();
    expect(find.text('Photo added'), findsOneWidget);
    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    expect(find.text('Wastage 10 kg Tomato'), findsOneWidget);
    await tester.tap(find.text('SAVE'));
    await tester.pumpAndSettle();
    expect(find.text('Saved W-0003'), findsOneWidget);
    expect(find.textContaining('₹'), findsNothing);
    verify(
      () => r.record(
        product: tomato,
        quantity: '10.000',
        reason: WastageReason.rotten,
        entryDate: any(named: 'entryDate'),
        idempotencyKey: any(named: 'idempotencyKey'),
        photoPath: '/tmp/rotten.jpg',
      ),
    ).called(1);
  });

  testWidgets('above the threshold it is sent for approval', (tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.6;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      RepositoryProvider<WastageRepository>.value(
        value: _repository(const WastageResult(waiting: true)),
        child: MaterialApp(theme: AppTheme.light(), home: const WastagePage()),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Tomato'));
    await tester.pumpAndSettle();
    await _type(tester, '80');
    await tester.tap(find.text('Weight loss'));
    await tester.pump();
    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('SAVE'));
    await tester.pumpAndSettle();
    expect(find.text('Sent for approval'), findsOneWidget);
  });
}
