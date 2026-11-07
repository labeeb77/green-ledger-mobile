import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/receive/data/receive_repository_impl.dart';
import 'package:green_ledger_mobile/features/receive/domain/receive.dart';
import 'package:green_ledger_mobile/features/receive/presentation/bloc/receive_cubit.dart';
import 'package:green_ledger_mobile/features/receive/presentation/pages/receive_page.dart';
import 'package:mocktail/mocktail.dart';

class _MockRepository extends Mock implements ReceiveRepository;

const kerala = Supplier(id: 's1', name: 'Kerala Agro');
const bag = ReceivePack(id: 'bag', name: 'Bag');
const crate = ReceivePack(id: 'crate', name: 'Crate', size: '25.000');
const gradeA = Grade(id: 'a', name: 'A');
const onion = ReceiveProduct(
  id: 'onion',
  name: 'Onion',
  stockUnit: 'kg',
  packs: [bag],
  grades: [
    gradeA,
    Grade(id: 'b', name: 'B'),
  ],
);
const tomato = ReceiveProduct(id: 'tomato', name: 'Tomato', stockUnit: 'kg', packs: [crate]);

_MockRepository _repository() {
  final r = _MockRepository();
  when(r.suppliers).thenAnswer((_) async => const Ok([kerala]));
  when(r.products).thenAnswer((_) async => const Ok([onion, tomato]));
  return r;
}

void main() {
  setUpAll(() => registerFallbackValue(kerala));

  test('weights, fixed packs and recent suppliers', () {
    expect(netFromWeights('520', '20'), '500.000');
    expect(netFromWeights('520', ''), '520.000');
    expect(netFromWeights('20', '20'), isNull);
    expect(fixedNet('4', '25.000'), '100.000');
    expect(
      [
        for (final s in recentFirst(
          const [Supplier(id: 'z', name: 'Zed'), Supplier(id: 'a', name: 'Alpha'), kerala],
          ['s1', 's1', 'x'],
        ))
          s.name,
      ],
      ['Kerala Agro', 'Alpha', 'Zed'],
    );
  });

  test('the body never carries a rate; tare only with gross', () {
    final body = receiptBodyFor(
      supplierId: 's1',
      receiptDate: '2026-11-07',
      lines: const [
        ReceiveLine(product: onion, pack: bag, packCount: '10.000', net: '500.000', grade: gradeA),
        ReceiveLine(product: tomato, net: '48.000', gross: '50.000', tare: '2.000'),
      ],
    );
    final json = jsonDecode(jsonEncode(body)) as Map<String, Object?>;
    final lines = (json['lines']! as List).cast<Map<String, Object?>>();
    expect(lines[0], containsPair('packCount', '10.000'));
    expect(lines[0], containsPair('gradeId', 'a'));
    expect(lines[0]['rate'], isNull);
    expect(lines[1], containsPair('gross', '50.000'));
    expect(lines[1], containsPair('tare', '2.000'));
    expect(json['receiptDate'], '2026-11-07');
  });

  group('ReceiveCubit', () {
    test('a fixed pack fills the net until it is typed; a bag must be weighed', () async {
      final cubit = ReceiveCubit(_repository());
      await cubit.load();
      cubit
        ..addItem()
        ..chooseProduct(tomato)
        ..setPacks('4');
      expect(cubit.state.editor!.net, '100');
      cubit
        ..setNet('98')
        ..setPacks('5');
      expect(cubit.state.editor!.net, '98');

      cubit
        ..addItem()
        ..chooseProduct(onion)
        ..setPacks('10');
      expect(cubit.state.editor!.problem, 'Enter the net kg');
      expect(cubit.state.editor!.grade, isNull); // two grades: the user picks
      cubit
        ..toggleWeights()
        ..setGross('520')
        ..setTare('20');
      expect(cubit.state.editor!.line?.net, '500.000');
    });

    test('the slip photo is asked for once', () async {
      final cubit = ReceiveCubit(_repository());
      await cubit.load();
      cubit
        ..chooseSupplier(kerala)
        ..addItem()
        ..chooseProduct(tomato)
        ..setPacks('4')
        ..saveItem()
        ..next();
      expect(cubit.state.askSlip, isTrue);
      expect(cubit.state.step, ReceiveStep.form);
      cubit
        ..back()
        ..next();
      expect(cubit.state.step, ReceiveStep.check);
    });
  });

  testWidgets('acceptance step 1: 10 bags of onion, 500 kg → Check → Saved GRN; no prices', (tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.6;
    addTearDown(tester.view.reset);
    final r = _repository();
    when(
      () => r.receive(
        supplier: any(named: 'supplier'),
        receiptDate: any(named: 'receiptDate'),
        lines: any(named: 'lines'),
        idempotencyKey: any(named: 'idempotencyKey'),
        slipPhotoPath: any(named: 'slipPhotoPath'),
        vehicleNo: any(named: 'vehicleNo'),
      ),
    ).thenAnswer((_) async => const Ok(SavedReceipt(number: 'GRN-0031')));
    await tester.pumpWidget(
      RepositoryProvider<ReceiveRepository>.value(
        value: r,
        child: MaterialApp(
          theme: AppTheme.light(),
          home: ReceivePage(takePhoto: () async => '/tmp/slip.jpg'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Kerala Agro'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Add item'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Onion'));
    await tester.pumpAndSettle();
    await tester.enterText(find.widgetWithText(TextField, 'Packs'), '10');
    await tester.enterText(find.widgetWithText(TextField, 'Net kg'), '500');
    await tester.tap(find.text('A'));
    await tester.pump();
    await tester.tap(find.text('ADD'));
    await tester.pumpAndSettle();
    expect(find.text('Onion · 10 Bag · 500 kg · A'), findsOneWidget);

    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    expect(find.text('No slip photo — add one?'), findsOneWidget);
    await tester.tap(find.text('Add photo'));
    await tester.pumpAndSettle();
    expect(find.text('Slip photo added'), findsOneWidget);
    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    expect(find.text('Receive 1 item from Kerala Agro'), findsOneWidget);
    await tester.tap(find.text('SAVE'));
    await tester.pumpAndSettle();
    expect(find.text('Saved GRN-0031'), findsOneWidget);
    expect(find.textContaining('₹'), findsNothing);

    final sent =
        verify(
              () => r.receive(
                supplier: kerala,
                receiptDate: any(named: 'receiptDate'),
                lines: captureAny(named: 'lines'),
                idempotencyKey: any(named: 'idempotencyKey'),
                slipPhotoPath: '/tmp/slip.jpg',
                vehicleNo: any(named: 'vehicleNo'),
              ),
            ).captured.single
            as List<ReceiveLine>;
    expect((sent.single.packCount, sent.single.net, sent.single.grade?.id), ('10.000', '500.000', 'a'));
  });
}
