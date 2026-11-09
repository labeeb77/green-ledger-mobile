import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/approvals/data/approvals_repository_impl.dart';
import 'package:green_ledger_mobile/features/approvals/domain/approval.dart';
import 'package:green_ledger_mobile/features/approvals/presentation/bloc/approvals_cubit.dart';
import 'package:green_ledger_mobile/features/approvals/presentation/pages/approvals_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';

class _MockRepository extends Mock implements ApprovalsRepository;

/// Acceptance step 9: an agent's order over the credit limit.
final Approval orderApproval = approvalFromDto(
  api.ApprovalDtoOutput.fromJson({
    'id': 'a1',
    'type': 'over_credit_limit',
    'status': 'pending',
    'requester': {'id': 'u5', 'name': 'Ravi', 'role': 'agent'},
    'entityType': 'order',
    'entityId': 'o1',
    'amount': 990000,
    'reason': 'Over credit limit: outstanding ₹45,000.00 + ₹9,900.00 credit > limit ₹50,000.00',
    'payload': {
      'number': 'ORD-0007',
      'customerName': 'Malabar Traders',
      'total': 990000,
      'issues': [
        {'type': 'over_credit_limit', 'outstanding': 4500000, 'newCredit': 750000, 'limit': 5000000},
      ],
    },
    'decidedBy': null,
    'decidedAt': null,
    'decisionNote': null,
    'createdAt': '2026-11-07T05:12:00.000Z',
  }),
);

const _offline = AppFailure(kind: FailureKind.network, message: 'No internet');

void main() {
  test('a card says who, what, and the numbers', () {
    expect(orderApproval.kind, ApprovalKind.overCreditLimit);
    expect(orderApproval.title, 'Over credit limit · Ravi → ORD-0007 · Malabar Traders');
    expect(orderApproval.details, ['Over credit limit by ₹2,500 (due ₹45,000 / limit ₹50,000)']);
    expect(orderApproval.amount, 990000);
  });

  test('rate issues in plain words; wastage lists its lines, then the reason', () {
    expect(
      issueLines([
        {'type': 'rate_below_minimum', 'product': 'Onion', 'rate': 2800, 'minimum': 3000},
      ]),
      ['Onion: rate ₹28 below minimum ₹30'],
    );
    final wastage = approvalFromDto(
      api.ApprovalDtoOutput.fromJson({
        'id': 'a2',
        'type': 'wastage',
        'status': 'pending',
        'requester': {'id': 'u4', 'name': 'Godown', 'role': 'godown'},
        'entityType': 'stock_entry',
        'entityId': 's1',
        'amount': 30000,
        'reason': 'Wastage ₹300 above the ₹200 limit',
        'payload': <String, Object?>{
          'name': 'Wastage',
          'lines': [
            {'product': 'Tomato', 'quantity': '-12.500', 'unit': 'kg', 'reason': 'rotten'},
            {'product': 'Onion', 'quantity': '-2.000', 'reason': null},
          ],
        },
        'decidedBy': null,
        'decidedAt': null,
        'decisionNote': null,
        'createdAt': '2026-11-07T05:12:00.000Z',
      }),
    );
    expect(wastage.title, 'Wastage · Godown');
    expect(wastage.details, ['Tomato 12.5 kg · Rotten', 'Onion 2', 'Wastage ₹300 above the ₹200 limit']);
  });

  group('ApprovalsCubit', () {
    late _MockRepository repository;
    setUp(() {
      repository = _MockRepository();
      when(repository.pending).thenAnswer((_) async => Ok([orderApproval]));
    });

    blocTest<ApprovalsCubit, ApprovalsState>(
      'approve removes the card; a network failure keeps the key for the retry',
      build: () => ApprovalsCubit(repository),
      act: (cubit) async {
        await cubit.load();
        when(() => repository.approve(any(), idempotencyKey: any(named: 'idempotencyKey')))
            .thenAnswer((_) async => const Err(_offline));
        await cubit.approve(orderApproval);
        expect(cubit.state.failures['a1'], _offline);
        when(() => repository.approve(any(), idempotencyKey: any(named: 'idempotencyKey')))
            .thenAnswer((_) async => const Ok(null));
        await cubit.approve(orderApproval);
      },
      verify: (cubit) {
        expect(cubit.state.items, isEmpty);
        expect(cubit.state.lastDecision, 'Approved');
        final keys = verify(() => repository.approve('a1', idempotencyKey: captureAny(named: 'idempotencyKey')))
            .captured;
        expect(keys.toSet(), hasLength(1));
      },
    );

    blocTest<ApprovalsCubit, ApprovalsState>(
      'reject needs a note',
      build: () => ApprovalsCubit(repository),
      act: (cubit) async {
        await cubit.load();
        await cubit.reject(orderApproval, '  ');
      },
      verify: (_) => verifyNever(
        () => repository.reject(
          any(),
          note: any(named: 'note'),
          idempotencyKey: any(named: 'idempotencyKey'),
        ),
      ),
    );
  });

  testWidgets('REJECT asks for a note (chip or text), then removes the card', (tester) async {
    final repository = _MockRepository();
    when(repository.pending).thenAnswer((_) async => Ok([orderApproval]));
    when(
      () => repository.reject(
        any(),
        note: any(named: 'note'),
        idempotencyKey: any(named: 'idempotencyKey'),
      ),
    ).thenAnswer((_) async => const Ok(null));
    await tester.pumpWidget(
      RepositoryProvider<ApprovalsRepository>.value(
        value: repository,
        child: withDrafts(MaterialApp(theme: AppTheme.light(), home: const ApprovalsPage())),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Over credit limit by ₹2,500 (due ₹45,000 / limit ₹50,000)'), findsOneWidget);

    await tester.tap(find.text('REJECT'));
    await tester.pumpAndSettle();
    final sheetReject = find.widgetWithText(FilledButton, 'REJECT');
    expect(tester.widget<FilledButton>(sheetReject).onPressed, isNull); // a note is required
    await tester.tap(find.text('Over limit'));
    await tester.pump();
    await tester.tap(sheetReject);
    await tester.pumpAndSettle();

    verify(
      () => repository.reject(
        'a1',
        note: 'Over limit',
        idempotencyKey: any(named: 'idempotencyKey'),
      ),
    ).called(1);
    expect(find.text('Rejected'), findsOneWidget);
    expect(find.text('Nothing waiting for you 🎉'), findsOneWidget);
  });
}
