import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/share/share_service.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/collect/presentation/pages/collect_page.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:mocktail/mocktail.dart';

import 'collect_test.dart' show preview, shopUpi, target;

class _MockRepository extends Mock implements CollectRepository;

class _MockDocuments extends Mock implements DocumentsRepository;

class _FakeShare extends ShareService {
  final shared = <(String, String?)>[];

  @override
  Future<void> shareFile(String path, {String? text}) async => shared.add((path, text));
}

Future<void> _type(WidgetTester tester, String digits) async {
  for (final d in digits.split('')) {
    await tester.tap(find.text(d).last);
    await tester.pump();
  }
}

void main() {
  setUpAll(() => registerFallbackValue(<PaymentLine>[]));

  testWidgets('acceptance step 5: ₹8,000 = ₹5,000 cash + ₹3,000 UPI → Check → Saved', (tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.6;
    addTearDown(tester.view.reset);
    final repository = _MockRepository();
    when(repository.accounts).thenAnswer((_) async => const Ok([shopUpi]));
    when(
      () => repository.preview(
        customerId: any(named: 'customerId'),
        amount: any(named: 'amount'),
      ),
    ).thenAnswer((_) async => const Ok(preview));
    when(
      () => repository.save(
        customerId: any(named: 'customerId'),
        shopName: any(named: 'shopName'),
        receiptDate: any(named: 'receiptDate'),
        lines: any(named: 'lines'),
        idempotencyKey: any(named: 'idempotencyKey'),
      ),
    ).thenAnswer((_) async => const Ok(SavedReceipt(id: 'r1', number: 'R-0042', total: 800000)));

    final documents = _MockDocuments();
    when(() => documents.receiptPdf('r1'))
        .thenAnswer((_) async => const Ok(DocumentFile(path: '/tmp/R-0042.pdf', filename: 'R-0042.pdf')));
    final share = _FakeShare();
    await tester.pumpWidget(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<CollectRepository>.value(value: repository),
          RepositoryProvider<DocumentsRepository>.value(value: documents),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          home: CollectPage(target: target, share: share),
        ),
      ),
    );
    await tester.pumpAndSettle();

    await _type(tester, '5000');
    await tester.tap(find.text('NEXT ▸ UPI'));
    await tester.pump();
    await _type(tester, '3000');
    expect(find.text('₹8,000'), findsOneWidget); // total, live
    expect(find.text('₹5,000'), findsWidgets); // cash row and due after

    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();
    expect(find.text('Collect ₹8,000 from Malabar Traders'), findsOneWidget);
    expect(find.text('Cash ₹5,000'), findsOneWidget);
    expect(find.text('UPI ₹3,000'), findsOneWidget);
    expect(find.text('Settles B-0012 in full'), findsOneWidget);
    expect(find.text('Settles B-0015 ₹3,000 part'), findsOneWidget);

    await tester.tap(find.text('SAVE'));
    await tester.pumpAndSettle();
    expect(find.text('Saved R-0042'), findsOneWidget);
    await tester.tap(find.text('SHARE ON WHATSAPP'));
    await tester.pumpAndSettle();
    expect(share.shared, [('/tmp/R-0042.pdf', 'Receipt R-0042 · ₹8,000 · Malabar Traders')]);
    final saved =
        verify(
              () => repository.save(
                customerId: 'c1',
                shopName: any(named: 'shopName'),
                receiptDate: any(named: 'receiptDate'),
                lines: captureAny(named: 'lines'),
                idempotencyKey: any(named: 'idempotencyKey'),
              ),
            ).captured.single
            as List<PaymentLine>;
    expect(saved.map((l) => (l.method, l.amount, l.accountId)), [
      (PaymentMethod.cash, 500000, null),
      (PaymentMethod.upi, 300000, 'upi1'),
    ]);
  });

  testWidgets('owner/manager: Change on Check moves the amount to another bill', (tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.6;
    addTearDown(tester.view.reset);
    final repository = _MockRepository();
    when(repository.accounts).thenAnswer((_) async => const Ok([shopUpi]));
    when(
      () => repository.preview(
        customerId: any(named: 'customerId'),
        amount: any(named: 'amount'),
      ),
    ).thenAnswer((_) async => const Ok(preview));
    when(
      () => repository.save(
        customerId: any(named: 'customerId'),
        shopName: any(named: 'shopName'),
        receiptDate: any(named: 'receiptDate'),
        lines: any(named: 'lines'),
        idempotencyKey: any(named: 'idempotencyKey'),
        allocations: any(named: 'allocations'),
      ),
    ).thenAnswer((_) async => const Ok(SavedReceipt(id: 'r1', number: 'R-0042', total: 800000)));

    Future<void> open({required bool canChange}) async {
      await tester.pumpWidget(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider<CollectRepository>.value(value: repository),
            RepositoryProvider<DocumentsRepository>.value(value: _MockDocuments()),
          ],
          child: MaterialApp(
            theme: AppTheme.light(),
            home: CollectPage(key: UniqueKey(), target: target, canChangeAllocation: canChange),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await _type(tester, '8000');
      await tester.tap(find.text('NEXT ▸ UPI'));
      await tester.pump();
      await tester.tap(find.text('NEXT'));
      await tester.pumpAndSettle();
    }

    await open(canChange: false);
    expect(find.text('Change'), findsNothing); // agents: read-only

    await open(canChange: true);
    await tester.tap(find.text('Change'));
    await tester.pumpAndSettle();
    expect(find.text('Settle ₹8,000'), findsOneWidget);
    await tester.enterText(find.byType(TextField).first, '0');
    await tester.tap(find.text('Full').last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('DONE'));
    await tester.pumpAndSettle();
    expect(find.text('Settles B-0015 in full'), findsOneWidget);
    expect(find.text('Settles B-0012 in full'), findsNothing);

    await tester.tap(find.text('SAVE'));
    await tester.pumpAndSettle();
    final sent = verify(
      () => repository.save(
        customerId: any(named: 'customerId'),
        shopName: any(named: 'shopName'),
        receiptDate: any(named: 'receiptDate'),
        lines: any(named: 'lines'),
        idempotencyKey: any(named: 'idempotencyKey'),
        allocations: captureAny(named: 'allocations'),
      ),
    ).captured.single;
    expect(sent, {'b1': 0, 'b2': 800000});
  });
}
