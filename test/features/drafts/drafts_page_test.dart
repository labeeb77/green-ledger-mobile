import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/drafts/drafts_badge.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/drafts/presentation/pages/drafts_page.dart';

import '../../helpers/drafts.dart';

Draft receipt(String id) => Draft(
  id: id,
  kind: DraftKind.receipt,
  title: 'Payment ₹8,000',
  subtitle: 'Malabar Traders',
  payload: '{}',
  createdAt: DateTime.now(),
);

void main() {
  testWidgets('SEND AGAIN saves the draft and says so', (tester) async {
    final store = MemoryDraftStore([receipt('k1')]);
    final sent = <String>[];
    await tester.pumpWidget(
      withDrafts(
        MaterialApp(theme: AppTheme.light(), home: const DraftsPage()),
        store: store,
        senders: {
          DraftKind.receipt: (d) async {
            sent.add(d.id);
            return const Ok('Saved R-0042');
          },
        },
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Payment ₹8,000'), findsOneWidget);
    expect(find.text('Malabar Traders'), findsOneWidget);

    await tester.tap(find.text('SEND AGAIN'));
    await tester.pumpAndSettle();
    expect(sent, ['k1']);
    expect(find.text('Saved R-0042'), findsOneWidget);
    expect(find.text('Everything is sent'), findsOneWidget);
  });

  testWidgets('Delete asks first, then removes the draft', (tester) async {
    final store = MemoryDraftStore([receipt('k1')]);
    await tester.pumpWidget(
      withDrafts(
        MaterialApp(theme: AppTheme.light(), home: const DraftsPage()),
        store: store,
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Delete'));
    await tester.pumpAndSettle();
    expect(find.text('Delete this entry?'), findsOneWidget);
    await tester.tap(find.text('Delete').last);
    await tester.pumpAndSettle();
    expect(store.drafts, isEmpty);
  });

  testWidgets('the top-bar badge counts drafts and hides at zero', (tester) async {
    final store = MemoryDraftStore([receipt('k1'), receipt('k2')]);
    await tester.pumpWidget(
      withDrafts(
        MaterialApp(
          theme: AppTheme.light(),
          home: Scaffold(appBar: AppBar(actions: const [DraftsBadge()])),
        ),
        store: store,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('2'), findsOneWidget);
    await store.remove('k1');
    await store.remove('k2');
    await tester.pumpAndSettle();
    expect(find.byType(Badge), findsNothing);
  });
}
