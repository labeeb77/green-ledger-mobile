import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/rates/data/rates_repository_impl.dart';
import 'package:green_ledger_mobile/features/rates/domain/rates.dart';
import 'package:green_ledger_mobile/features/rates/presentation/bloc/rates_cubit.dart';
import 'package:green_ledger_mobile/features/rates/presentation/pages/rates_page.dart';
import 'package:mocktail/mocktail.dart';

class _MockRates extends Mock implements RatesRepository;

const _onion = RateRow(productId: 'p1', productName: 'Onion', unitLabel: 'kg', rate: 4000, previousRate: 3800);
const _tomato = RateRow(productId: 'p2', productName: 'Tomato', unitLabel: 'kg', previousRate: 2500);
const _bag = RateRow(productId: 'p2', productName: 'Tomato', unitLabel: 'Box', packUnitId: 'u1', rate: 30000);
const _day = DailyRateList(date: '2026-11-07', rows: [_onion, _tomato, _bag]);

Future<(RatesCubit, _MockRates)> _loaded() async {
  final repo = _MockRates();
  when(repo.today).thenAnswer((_) async => const Ok(_day));
  when(() => repo.save(any(), any())).thenAnswer((_) async => const Ok(_day));
  final cubit = RatesCubit(repo);
  await cubit.load();
  return (cubit, repo);
}

void main() {
  test('typing the stored rate back or clearing it is no change', () async {
    final (cubit, _) = await _loaded();
    cubit.setRate(_onion, 4200);
    expect((cubit.state as RatesLoaded).isChanged(_onion), isTrue);
    cubit.setRate(_onion, 4000);
    expect((cubit.state as RatesLoaded).edits, isEmpty);
    cubit
      ..setRate(_tomato, 2600)
      ..setRate(_tomato, 0);
    expect((cubit.state as RatesLoaded).edits, isEmpty);
  });

  test("copy yesterday's rates fills rows with an earlier rate and keeps typed ones", () async {
    final (cubit, _) = await _loaded();
    cubit
      ..setRate(_tomato, 2700)
      ..copyYesterday();
    final s = cubit.state as RatesLoaded;
    expect(s.edits, {'p1/': 3800, 'p2/': 2700});
    expect(s.rateOf(_bag), 30000);
  });

  test('save sends only the changed rows, then clears the highlight', () async {
    final (cubit, repo) = await _loaded();
    cubit.setRate(_bag, 32000);
    await cubit.save();
    verify(() => repo.save('2026-11-07', [(productId: 'p2', packUnitId: 'u1', rate: 32000)])).called(1);
    final s = cubit.state as RatesLoaded;
    expect(s.edits, isEmpty);
    expect(s.saved, isTrue);
  });

  test('a failed save keeps the edits', () async {
    final (cubit, repo) = await _loaded();
    when(() => repo.save(any(), any()))
        .thenAnswer((_) async => const Err(AppFailure(kind: FailureKind.network, message: 'No internet')));
    cubit.setRate(_onion, 4500);
    await cubit.save();
    final s = cubit.state as RatesLoaded;
    expect(s.edits, {'p1/': 4500});
    expect((s.saveFailure?.message, s.saving), ('No internet', false));
  });

  test('maps the server rows with the previous rate', () {
    final list = dailyRatesFromDto(
      api.DailyRatesDtoOutput.fromJson({
        'date': '2026-11-07',
        'rows': [
          {
            'productId': 'p1',
            'productName': 'Onion',
            'packUnitId': null,
            'unitLabel': 'kg',
            'rate': null,
            'previous': {'rate': 3800, 'date': '2026-11-06'},
          },
        ],
      }),
    );
    final r = list.rows.single;
    expect((r.key, r.rate, r.previousRate, r.previousDate), ('p1/', null, 3800, '2026-11-06'));
  });

  testWidgets('shows yesterday in grey, highlights a change and saves it', (tester) async {
    final repo = _MockRates();
    when(repo.today).thenAnswer((_) async => const Ok(_day));
    when(() => repo.save(any(), any())).thenAnswer((_) async => const Ok(_day));
    await tester.pumpWidget(
      RepositoryProvider<RatesRepository>.value(
        value: repo,
        child: MaterialApp(theme: AppTheme.light(), home: const RatesPage()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('per kg · Yesterday ₹38'), findsOneWidget);
    expect(find.text('COPY YESTERDAY’S RATES'), findsOneWidget);
    expect(find.textContaining('SAVE'), findsNothing);

    await tester.tap(find.text('COPY YESTERDAY’S RATES'));
    await tester.pumpAndSettle();
    expect(find.text('SAVE 2 RATES'), findsOneWidget);
    await tester.tap(find.text('SAVE 2 RATES'));
    await tester.pumpAndSettle();
    verify(
      () => repo.save('2026-11-07', [
        (productId: 'p1', packUnitId: null, rate: 3800),
        (productId: 'p2', packUnitId: null, rate: 2500),
      ]),
    ).called(1);
    expect(find.text('Rates saved'), findsOneWidget);
  });
}
