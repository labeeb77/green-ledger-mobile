import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/mistakes/data/mistakes_repository_impl.dart';
import 'package:green_ledger_mobile/features/mistakes/domain/mistakes.dart';
import 'package:green_ledger_mobile/features/mistakes/presentation/bloc/report_mistake_cubit.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/shops/presentation/pages/shop_detail_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/sessions.dart';

class _MockMistakes extends Mock implements MistakesRepository;

class _MockShops extends Mock implements ShopsRepository;

class _MockDocuments extends Mock implements DocumentsRepository;

class _MockAuth extends Mock implements AuthRepository;

const _bill = MistakeTarget(entry: MistakeEntry.bill, id: 'b1', number: 'B-0012', total: 500000);
const _offline = AppFailure(kind: FailureKind.network, message: 'No internet');
const _refused = AppFailure(kind: FailureKind.rejected, message: 'This report is already open');

void _stubReport(_MockMistakes repository, Result<void> result) => when(
  () => repository.report(
    target: any(named: 'target'),
    reason: any(named: 'reason'),
    idempotencyKey: any(named: 'idempotencyKey'),
    note: any(named: 'note'),
  ),
).thenAnswer((_) async => result);

void main() {
  setUpAll(() {
    registerFallbackValue(_bill);
    registerFallbackValue(MistakeReason.other);
  });

  test('says what blocks SEND: a reason, and a note for Other', () {
    expect(mistakeProblem(reason: null, note: ''), 'Choose what is wrong');
    expect(mistakeProblem(reason: MistakeReason.wrongAmount, note: ''), isNull);
    expect(mistakeProblem(reason: MistakeReason.other, note: '  '), 'Write what is wrong');
    expect(mistakeProblem(reason: MistakeReason.other, note: 'Two bills for one sale'), isNull);
  });

  test('builds the body with the wire values and a trimmed note or none', () {
    final body = mistakeReportFor(target: _bill, reason: MistakeReason.wrongAmount, note: ' 5 kg, not 50 ');
    expect(jsonDecode(jsonEncode(body)), {
      'documentType': 'sales_bill',
      'documentId': 'b1',
      'reason': 'wrong_amount',
      'note': '5 kg, not 50',
    });
    const receipt = MistakeTarget(entry: MistakeEntry.receipt, id: 'r1', number: 'R-0003', total: 800000);
    final other = mistakeReportFor(target: receipt, reason: MistakeReason.duplicate, note: ' ');
    expect(other.documentType, api.CreateMistakeReportBodyDocumentType.receipt);
    expect(other.note, isNull);
  });

  test('maps a report from the list, with the office note once closed', () {
    final item = api.Items3.fromJson({
      'id': 'm1',
      'document': {
        'type': 'sales_bill',
        'id': 'b1',
        'number': 'B-0012',
        'status': 'cancelled',
        'total': 500000,
        'customer': {'id': 'c1', 'name': 'Malabar Traders'},
      },
      'reason': 'wrong_amount',
      'note': '5 kg, not 50',
      'status': 'closed',
      'reporter': {'id': 'u-agent', 'name': 'Faisal'},
      'createdAt': '2026-11-07T05:00:00Z',
      'closedBy': {'id': 'u-owner', 'name': 'Owner'},
      'closedAt': '2026-11-07T06:00:00Z',
      'closeNote': 'Cancelled; please bill again',
    });
    final report = mistakeReportFrom(item);
    expect(report.number, 'B-0012');
    expect(report.shopName, 'Malabar Traders');
    expect(report.reason, MistakeReason.wrongAmount);
    expect(report.open, isFalse);
    expect(report.entryCancelled, isTrue);
    expect(report.closeNote, 'Cancelled; please bill again');
  });

  group('ReportMistakeCubit', () {
    late _MockMistakes repository;
    setUp(() => repository = _MockMistakes());

    test('reason → note → SEND reports the entry once with the key', () async {
      _stubReport(repository, const Ok(null));
      final cubit = ReportMistakeCubit(repository, _bill, idempotencyKey: 'k1')
        ..choose(MistakeReason.wrongAmount)
        ..setNote('5 kg, not 50');
      await cubit.send();
      expect(cubit.state.sent, isTrue);
      verify(
        () => repository.report(
          target: _bill,
          reason: MistakeReason.wrongAmount,
          idempotencyKey: 'k1',
          note: '5 kg, not 50',
        ),
      ).called(1);
    });

    test('Other without a note is not sent', () async {
      final cubit = ReportMistakeCubit(repository, _bill)..choose(MistakeReason.other);
      await cubit.send();
      expect(cubit.state.problem, 'Write what is wrong');
      verifyNever(
        () => repository.report(
          target: any(named: 'target'),
          reason: any(named: 'reason'),
          idempotencyKey: any(named: 'idempotencyKey'),
          note: any(named: 'note'),
        ),
      );
    });

    blocTest<ReportMistakeCubit, ReportMistakeState>(
      'a network failure keeps the key, so a retry reports once',
      build: () {
        _stubReport(repository, const Err(_offline));
        return ReportMistakeCubit(repository, _bill, idempotencyKey: 'k1')..choose(MistakeReason.duplicate);
      },
      act: (cubit) => cubit.send(),
      verify: (cubit) {
        expect(cubit.state.failure, _offline);
        expect(cubit.state.idempotencyKey, 'k1');
        expect(cubit.state.sent, isFalse);
      },
    );

    blocTest<ReportMistakeCubit, ReportMistakeState>(
      'a refusal gets a new key',
      build: () {
        _stubReport(repository, const Err(_refused));
        return ReportMistakeCubit(repository, _bill, idempotencyKey: 'k1')..choose(MistakeReason.duplicate);
      },
      act: (cubit) => cubit.send(),
      verify: (cubit) {
        expect(cubit.state.failure, _refused);
        expect(cubit.state.idempotencyKey, isNot('k1'));
      },
    );
  });

  group('shop detail', () {
    late _MockMistakes mistakes;
    late _MockShops shops;

    Future<void> pump(WidgetTester tester, Role role) async {
      final authRepository = _MockAuth();
      when(() => authRepository.sessionExpired).thenAnswer((_) => const Stream.empty());
      final auth = AuthBloc(authRepository)..emit(AuthSignedIn(sessionFor(role)));
      await tester.pumpWidget(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider<ShopsRepository>.value(value: shops),
            RepositoryProvider<MistakesRepository>.value(value: mistakes),
            RepositoryProvider<DocumentsRepository>.value(value: _MockDocuments()),
          ],
          child: BlocProvider.value(
            value: auth,
            child: MaterialApp(
              theme: AppTheme.light(),
              home: const ShopDetailPage(shopId: 'c1'),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
    }

    setUp(() {
      mistakes = _MockMistakes();
      shops = _MockShops();
      when(() => shops.shop('c1')).thenAnswer(
        (_) async => const Ok(Shop(id: 'c1', name: 'Malabar Traders', outstanding: 500000, overdue: 0, creditLimit: 0)),
      );
      when(() => shops.activity('c1')).thenAnswer(
        (_) async => const Ok(
          ShopActivity(
            bills: [
              ShopBill(
                id: 'b1',
                number: 'B-0012',
                billDate: '2026-11-07',
                total: 500000,
                open: 500000,
                state: BillState.due,
                byId: 'u-agent',
              ),
              ShopBill(
                id: 'b2',
                number: 'B-0011',
                billDate: '2026-11-06',
                total: 300000,
                open: 0,
                state: BillState.paid,
                byId: 'u-owner',
              ),
              ShopBill(
                id: 'b3',
                number: 'B-0010',
                billDate: '2026-11-05',
                total: 100000,
                open: 0,
                state: BillState.cancelled,
                byId: 'u-agent',
              ),
            ],
            payments: [],
          ),
        ),
      );
    });

    testWidgets("only the agent's own posted entries have Report a mistake", (tester) async {
      _stubReport(mistakes, const Ok(null));
      await pump(tester, Role.agent);
      expect(find.byIcon(Icons.more_vert), findsOneWidget);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Report a mistake'));
      await tester.pumpAndSettle();
      expect(find.text('B-0012 · ₹5,000'), findsOneWidget);

      await tester.tap(find.text('Wrong amount'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('SEND'));
      await tester.pumpAndSettle();
      expect(find.text('Reported'), findsOneWidget);
      verify(
        () => mistakes.report(
          target: any(named: 'target', that: isA<MistakeTarget>().having((t) => t.id, 'id', 'b1')),
          reason: MistakeReason.wrongAmount,
          idempotencyKey: any(named: 'idempotencyKey'),
          note: any(named: 'note'),
        ),
      ).called(1);
    });

    testWidgets('owners see no Report a mistake', (tester) async {
      await pump(tester, Role.owner);
      expect(find.byIcon(Icons.more_vert), findsNothing);
    });
  });
}
