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
import 'package:green_ledger_mobile/features/home/data/home_repository_impl.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/home/presentation/bloc/agent_home_cubit.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/home_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';
import '../../helpers/sessions.dart';

class _MockHome extends Mock implements HomeRepository;

class _MockAuth extends Mock implements AuthRepository;

const _offline = AppFailure(kind: FailureKind.network, message: 'No internet');

const _home = AgentHome(
  dueOnMyShops: 12450000,
  collectedToday: CollectedToday(total: 1800000, cash: 1000000, upi: 800000, bankTransfer: 0, cheque: 0),
  cashToHandOver: 500000,
  handoverPending: true,
  dueToday: [
    DueShop(customerId: 's1', name: 'Promise Stores', outstanding: 150000, due: 0, overdue: 0, promisedToday: true),
    DueShop(
      customerId: 's2',
      name: 'Malabar Traders',
      area: 'Palayam',
      outstanding: 1300000,
      due: 500000,
      overdue: 500000,
      promisedToday: false,
    ),
  ],
);

Future<_MockHome> _pumpHome(WidgetTester tester, Role role, {Result<AgentHome> result = const Ok(_home)}) async {
  final home = _MockHome();
  when(home.agentHome).thenAnswer((_) async => result);
  final authRepository = _MockAuth();
  when(() => authRepository.sessionExpired).thenAnswer((_) => const Stream.empty());
  final auth = AuthBloc(authRepository)..emit(AuthSignedIn(sessionFor(role)));
  await tester.pumpWidget(
    RepositoryProvider<HomeRepository>.value(
      value: home,
      child: BlocProvider.value(
        value: auth,
        child: withDrafts(MaterialApp(theme: AppTheme.light(), home: const HomePage())),
      ),
    ),
  );
  await tester.pumpAndSettle();
  return home;
}

void main() {
  test('maps the server Home, keeping its order', () {
    final home = agentHomeFromDto(
      api.AgentHomeDtoOutput.fromJson({
        'date': '2026-11-07',
        'dueOnMyShops': 300000,
        'collectedToday': {
          'total': 40000,
          'byMethod': {'cash': 30000, 'upi': 10000, 'bank_transfer': 0, 'cheque': 0},
        },
        'cashToHandOver': 30000,
        'handoverPending': false,
        'dueToday': [
          {
            'customerId': 'c1',
            'name': 'Home Promised Stores',
            'area': null,
            'phone': null,
            'outstanding': 100000,
            'due': 0,
            'overdue': 0,
            'oldestDueDate': null,
            'promisedToday': true,
            'lastVisit': null,
          },
        ],
      }),
    );
    expect(home.collectedToday.upi, 10000);
    expect(home.dueToday.single.promisedToday, isTrue);
  });

  late _MockHome repository;
  setUp(() => repository = _MockHome());

  blocTest<AgentHomeCubit, AgentHomeState>(
    'a failed refresh keeps the last figures',
    setUp: () => when(() => repository.agentHome()).thenAnswer((_) async => const Ok(_home)),
    build: () => AgentHomeCubit(repository),
    act: (cubit) async {
      await cubit.load();
      when(() => repository.agentHome()).thenAnswer((_) async => const Err(_offline));
      await cubit.load();
    },
    expect: () => [isA<AgentHomeLoading>(), isA<AgentHomeLoaded>()],
  );

  testWidgets("an agent's Home shows today's figures and the shops due today", (tester) async {
    await _pumpHome(tester, Role.agent);
    expect(find.text('₹1,24,500'), findsOneWidget);
    expect(find.text('Cash ₹10,000 · UPI ₹8,000'), findsOneWidget);
    expect(find.text('Handover waiting for manager'), findsOneWidget);
    expect(find.text('Due today (2)'), findsOneWidget);
    // A promise with nothing due yet shows what the shop owes.
    expect(find.text('₹1,500'), findsOneWidget);
    expect(find.text('Promised today'), findsOneWidget);
    expect(find.text('Overdue'), findsOneWidget);
  });

  testWidgets('says so when nothing is due', (tester) async {
    await _pumpHome(
      tester,
      Role.agent,
      result: const Ok(
        AgentHome(
          dueOnMyShops: 0,
          collectedToday: CollectedToday(total: 0, cash: 0, upi: 0, bankTransfer: 0, cheque: 0),
          cashToHandOver: 0,
          handoverPending: false,
          dueToday: [],
        ),
      ),
    );
    expect(find.text('Nothing due today 🎉'), findsOneWidget);
  });

  testWidgets('shows the failure with TRY AGAIN when offline', (tester) async {
    await _pumpHome(tester, Role.agent, result: const Err(_offline));
    expect(find.text('No internet'), findsOneWidget);
    expect(find.text('TRY AGAIN'), findsOneWidget);
  });

  testWidgets('owners keep the placeholder card and never call the agent Home', (tester) async {
    final home = await _pumpHome(tester, Role.owner);
    verifyNever(home.agentHome);
    expect(find.text('Soon'), findsWidgets);
  });
}
