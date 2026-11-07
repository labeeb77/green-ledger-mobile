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
import 'package:green_ledger_mobile/features/home/presentation/pages/agents_today_page.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/home_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';
import '../../helpers/sessions.dart';

class _MockHome extends Mock implements HomeRepository;

class _MockAuth extends Mock implements AuthRepository;

const _offline = AppFailure(kind: FailureKind.network, message: 'No internet');

const godownHome = GodownHome(
  toDispatch: 6,
  arrivalsToday: 3,
  lowStock: [LowStockItem(name: 'Garlic', unit: 'kg', quantity: '8.000', level: '20.000')],
  wastageToday: {'kg': '12.000'},
  wastagePending: 1,
  returnsToInspect: 2,
);

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

const _ownerHome = OwnerHome(
  sales: 1800000,
  bills: 4,
  collected: 1300000,
  outstanding: 500000,
  overdue: 200000,
  approvalsWaiting: 3,
  handoversWaiting: 2,
);

Future<_MockHome> _pumpHome(WidgetTester tester, Role role, {Result<AgentHome> result = const Ok(_home)}) async {
  final home = _MockHome();
  when(home.agentHome).thenAnswer((_) async => result);
  when(home.godownHome).thenAnswer((_) async => const Ok(godownHome));
  when(
    () => home.ownerHome(
      approvals: any(named: 'approvals'),
      handovers: any(named: 'handovers'),
    ),
  ).thenAnswer((_) async => const Ok(_ownerHome));
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

  testWidgets('owner: today figures, what waits, agents today and SALE · COLLECT · RATES', (tester) async {
    final home = await _pumpHome(tester, Role.owner);
    verifyNever(home.agentHome);
    verify(() => home.ownerHome(approvals: true, handovers: true)).called(1);
    expect(find.text('Sales (4 bills)'), findsOneWidget);
    expect(find.text('₹18,000'), findsOneWidget);
    expect(find.text('₹13,000'), findsOneWidget);
    expect(find.text('Overdue ₹2,000'), findsOneWidget);
    expect(find.text('3 approvals waiting'), findsOneWidget);
    expect(find.text('2 cash handovers'), findsOneWidget);
    expect(find.text('Agents today'), findsOneWidget);
    for (final action in ['SALE', 'COLLECT', 'RATES']) {
      expect(find.text(action), findsOneWidget);
    }
    expect(find.text('Soon'), findsNothing);
  });

  test('maps the dashboard and agents today', () {
    final owner = ownerHomeFromDto(
      api.DashboardDtoOutput.fromJson({
        'from': '2026-11-07',
        'to': '2026-11-07',
        'sales': {
          'total': 1800000,
          'bills': 4,
          'link': {'report': 'sales', 'groupBy': null},
        },
        'collections': null,
        'outstanding': {
          'total': 500000,
          'overdue': 200000,
          'customers': 2,
          'link': {'report': 'customer-ageing', 'groupBy': null},
        },
        'supplierDues': null,
        'expenses': null,
        'lowStock': null,
        'overdueCustomers': null,
      }),
      approvalsWaiting: 1,
    );
    expect((owner.sales, owner.bills, owner.collected, owner.overdue), (1800000, 4, null, 200000));
    expect((owner.approvalsWaiting, owner.handoversWaiting), (1, null));

    final day = agentDayFromDto(
      api.Agents.fromJson({
        'userId': 'u1',
        'name': 'Faisal',
        'collected': {
          'total': 800000,
          'byMethod': {'cash': 500000, 'upi': 300000, 'bank_transfer': 0, 'cheque': 0},
        },
        'visits': 6,
        'cashInBag': 500000,
        'handoverPending': true,
      }),
    );
    expect(
      (day.name, day.collected, day.cash, day.upi, day.visits, day.cashInBag),
      ('Faisal', 800000, 500000, 300000, 6, 500000),
    );
    expect(day.handoverPending, isTrue);
  });

  testWidgets('godown: to dispatch, arrivals, low stock, wastage and the four actions; no prices', (tester) async {
    final home = await _pumpHome(tester, Role.godown);
    verifyNever(home.agentHome);
    expect(find.text('6 orders'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('1 item'), findsOneWidget);
    expect(find.text('12 kg · 1 waiting'), findsOneWidget);
    expect(find.text('Returns to inspect'), findsOneWidget);
    for (final action in ['RECEIVE', 'DISPATCH', 'WASTAGE', 'RETURNS']) {
      expect(find.text(action), findsOneWidget);
    }
    expect(find.textContaining('₹'), findsNothing);
  });

  test('maps the godown Home', () {
    final h = godownHomeFromDto(
      api.GodownHomeDtoOutput.fromJson({
        'date': '2026-11-07',
        'toDispatch': 6,
        'arrivalsToday': 3,
        'lowStock': [
          {'productId': 'p1', 'name': 'Garlic', 'stockUnit': 'kg', 'quantity': '8.000', 'lowStockLevel': '20.000'},
        ],
        'wastageToday': {
          'byUnit': [
            {'unit': 'kg', 'quantity': '12.000'},
          ],
          'pendingApproval': 1,
        },
        'returnsToInspect': null,
      }),
    );
    expect(h.wastageToday, {'kg': '12.000'});
    expect(h.lowStock.single.name, 'Garlic');
    expect(h.returnsToInspect, isNull);
  });

  testWidgets('agents today: collected by method, cash in bag, visits, waiting handover', (tester) async {
    final home = _MockHome();
    when(home.agentsToday).thenAnswer(
      (_) async => const Ok([
        AgentDay(
          userId: 'u1',
          name: 'Faisal',
          collected: 800000,
          cash: 500000,
          upi: 300000,
          bankTransfer: 0,
          cheque: 0,
          visits: 6,
          cashInBag: 450000,
          handoverPending: true,
        ),
      ]),
    );
    await tester.pumpWidget(
      RepositoryProvider<HomeRepository>.value(
        value: home,
        child: MaterialApp(theme: AppTheme.light(), home: const AgentsTodayPage()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Faisal'), findsOneWidget);
    expect(find.text('₹8,000'), findsOneWidget);
    expect(find.text('Cash ₹5,000 · UPI ₹3,000'), findsOneWidget);
    expect(find.text('₹4,500'), findsOneWidget);
    expect(find.text('6 visits'), findsOneWidget);
    expect(find.text('Handover waiting to be counted'), findsOneWidget);
  });
}
