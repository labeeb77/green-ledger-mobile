import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/returns/data/returns_repository_impl.dart';
import 'package:green_ledger_mobile/features/returns/domain/returns.dart';
import 'package:green_ledger_mobile/features/returns/presentation/pages/returns_pages.dart';
import 'package:mocktail/mocktail.dart';

class _MockRepository extends Mock implements ReturnsRepository;

Map<String, Object?> line(String id, String inspection) => {
  'id': id,
  'billLineId': null,
  'product': {'id': 'p-$id', 'name': id == 'l1' ? 'Tomato' : 'Onion', 'stockUnit': 'kg'},
  'packUnit': id == 'l1' ? {'id': 'crate', 'name': 'Crate'} : null,
  'packCount': id == 'l1' ? '2.000' : null,
  'quantity': id == 'l1' ? '50.000' : '12.000',
  'rate': 2400,
  'amount': 120000,
  'inspection': inspection,
  'inspectedBy': null,
  'inspectedAt': null,
};

final ReturnToInspect ret = returnFromDto(
  api.CustomerReturnDtoOutput.fromJson({
    'id': 'r1',
    'number': 'RET-0004',
    'returnDate': '2026-11-07',
    'customer': {'id': 'c1', 'name': 'Malabar Traders'},
    'bill': {'id': 'b1', 'number': 'B-0012'},
    'total': 132000,
    'status': 'posted',
    'notes': null,
    'createdBy': {'id': 'u5', 'name': 'Ravi'},
    'approvalId': null,
    'lines': [line('l1', 'pending'), line('l2', 'pending'), line('l3', 'saleable')],
    'createdAt': '2026-11-07T05:00:00.000Z',
    'cancelReason': null,
  }),
);

void main() {
  setUpAll(() => registerFallbackValue(ret));

  test('only pending lines, in the godown’s words; the body per chosen line', () {
    expect([for (final l in ret.lines) l.describe], ['2 Crate · 50 kg', '12 kg']);
    final body = jsonDecode(
      jsonEncode(inspectBodyFor({'l1': InspectionResult.saleable, 'l2': InspectionResult.disposed})),
    );
    expect(body, {
      'lines': [
        {'lineId': 'l1', 'result': 'saleable'},
        {'lineId': 'l2', 'result': 'disposed'},
      ],
    });
  });

  testWidgets('three chips per line; unchosen lines wait; no amounts shown', (tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.6;
    addTearDown(tester.view.reset);
    final r = _MockRepository();
    when(
      () => r.inspect(
        ret: any(named: 'ret'),
        results: any(named: 'results'),
        idempotencyKey: any(named: 'idempotencyKey'),
      ),
    ).thenAnswer((_) async => const Ok(null));
    await tester.pumpWidget(
      RepositoryProvider<ReturnsRepository>.value(
        value: r,
        child: MaterialApp(
          theme: AppTheme.light(),
          home: InspectPage(ret: ret),
        ),
      ),
    );
    expect(find.text('Saleable'), findsNWidgets(2));
    expect(find.textContaining('₹'), findsNothing);
    await tester.tap(find.text('Damaged').first);
    await tester.pump();
    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    expect(find.text('Tomato · 2 Crate · 50 kg · Damaged'), findsOneWidget);
    expect(find.text('Onion · 12 kg · later'), findsOneWidget);
    await tester.tap(find.text('SAVE'));
    await tester.pumpAndSettle();
    expect(find.text('Inspection saved'), findsOneWidget);
    verify(
      () => r.inspect(
        ret: ret,
        results: {'l1': InspectionResult.damaged},
        idempotencyKey: any(named: 'idempotencyKey'),
      ),
    ).called(1);
  });
}
