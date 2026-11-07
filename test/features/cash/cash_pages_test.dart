import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:green_ledger_mobile/features/cash/presentation/pages/cash_page.dart';
import 'package:green_ledger_mobile/features/cash/presentation/pages/handovers_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';
import '../../helpers/sessions.dart';
import 'cash_test.dart';

class _MockAuth extends Mock implements AuthRepository;

void main() {
  testWidgets('agent: the bag, today’s receipts, HAND OVER ₹5,000 → Sent', (tester) async {
    final repository = MockCashRepository();
    when(repository.myBag).thenAnswer((_) async => const Ok(bag));
    when(repository.handovers).thenAnswer((_) async => const Ok([]));
    when(() => repository.handOver(idempotencyKey: any(named: 'idempotencyKey'))).thenAnswer((_) async {
      when(repository.myBag)
          .thenAnswer((_) async => Ok(CashBag(balance: 500000, receipts: bag.receipts, pending: handover('h1'))));
      return Ok(handover('h1'));
    });
    final auth = _MockAuth();
    when(() => auth.sessionExpired).thenAnswer((_) => const Stream.empty());
    await tester.pumpWidget(
      RepositoryProvider<CashRepository>.value(
        value: repository,
        child: BlocProvider.value(
          value: AuthBloc(auth)..emit(AuthSignedIn(sessionFor(Role.agent))),
          child: withDrafts(MaterialApp(theme: AppTheme.light(), home: const CashPage())),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('₹5,000'), findsOneWidget);
    expect(find.text('2 receipts today'), findsOneWidget);
    expect(find.text('Malabar Traders'), findsOneWidget);

    await tester.tap(find.text('HAND OVER ₹5,000'));
    await tester.pumpAndSettle();
    expect(find.text('₹5,000 · waiting for the manager'), findsOneWidget);
    expect(find.text('HAND OVER ₹5,000'), findsNothing);
  });

  testWidgets('manager: a short count shows in red before CONFIRM', (tester) async {
    final repository = MockCashRepository();
    when(repository.handovers).thenAnswer((_) async => Ok([handover('h1')]));
    when(
      () => repository.confirm(
        id: any(named: 'id'),
        counted: any(named: 'counted'),
        idempotencyKey: any(named: 'idempotencyKey'),
      ),
    ).thenAnswer((_) async => Ok(handover('h1', status: HandoverStatus.mismatch, counted: 480000)));
    await tester.pumpWidget(
      RepositoryProvider<CashRepository>.value(
        value: repository,
        child: MaterialApp(theme: AppTheme.light(), home: const HandoversPage()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Faisal handing over ₹5,000'), findsOneWidget);
    await tester.enterText(find.byType(TextField), '4800');
    await tester.pump();
    expect(find.text('₹200 short'), findsOneWidget);
    await tester.tap(find.text('CONFIRM ₹4,800'));
    await tester.pumpAndSettle();
    verify(
      () => repository.confirm(
        id: 'h1',
        counted: 480000,
        idempotencyKey: any(named: 'idempotencyKey'),
      ),
    ).called(1);
  });
}
