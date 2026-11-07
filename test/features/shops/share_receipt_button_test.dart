import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/share/share_service.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/share_receipt_button.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/share_statement_button.dart';
import 'package:mocktail/mocktail.dart';

class _MockDocuments extends Mock implements DocumentsRepository;

class _FakeShare extends ShareService {
  final shared = <String>[];

  @override
  Future<void> shareFile(String path, {String? text}) async => shared.add(path);
}

Future<_FakeShare> _pump(WidgetTester tester, Result<DocumentFile> result) async {
  final documents = _MockDocuments();
  when(() => documents.receiptPdf('r1')).thenAnswer((_) async => result);
  final share = _FakeShare();
  await tester.pumpWidget(
    RepositoryProvider<DocumentsRepository>.value(
      value: documents,
      child: MaterialApp(
        theme: AppTheme.light(),
        home: Scaffold(
          body: ShareReceiptButton(receiptId: 'r1', text: 'Receipt R-0001', share: share),
        ),
      ),
    ),
  );
  await tester.tap(find.byTooltip('Share'));
  await tester.pumpAndSettle();
  return share;
}

void main() {
  testWidgets('shares the receipt PDF again', (tester) async {
    final share = await _pump(tester, const Ok(DocumentFile(path: '/tmp/r.pdf', filename: 'r.pdf')));
    expect(share.shared, ['/tmp/r.pdf']);
  });

  testWidgets('says why in plain words when the PDF fails', (tester) async {
    final share = await _pump(
      tester,
      const Err(AppFailure(kind: FailureKind.network, message: 'No internet. Check the connection and try again.')),
    );
    expect(share.shared, isEmpty);
    expect(find.text('No internet. Check the connection and try again.'), findsOneWidget);
  });

  testWidgets('shares a statement for the period picked', (tester) async {
    final documents = _MockDocuments();
    when(() => documents.customerStatementPdf('c1', from: '2026-10-01', to: '2026-10-31'))
        .thenAnswer((_) async => const Ok(DocumentFile(path: '/tmp/s.pdf', filename: 's.pdf')));
    final share = _FakeShare();
    await tester.pumpWidget(
      RepositoryProvider<DocumentsRepository>.value(
        value: documents,
        child: MaterialApp(
          theme: AppTheme.light(),
          home: Scaffold(
            body: ShareStatementButton(
              customerId: 'c1',
              name: 'Malabar Traders',
              share: share,
              now: DateTime(2026, 11, 7, 12),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.byTooltip('Share statement'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Last month'));
    await tester.pumpAndSettle();
    expect(share.shared, ['/tmp/s.pdf']);
  });
}
