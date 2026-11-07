import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/search/data/search_repository_impl.dart';
import 'package:green_ledger_mobile/features/search/domain/search.dart';
import 'package:green_ledger_mobile/features/search/presentation/bloc/search_cubit.dart';
import 'package:green_ledger_mobile/features/search/presentation/pages/search_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/sessions.dart';

class _MockSearch extends Mock implements SearchRepository;

class _MockDocuments extends Mock implements DocumentsRepository;

class _MockAuth extends Mock implements AuthRepository;

const _results = SearchResults(
  customers: [SearchHit(id: 'c1', name: 'Malabar Traders', detail: 'Palayam · 9847000001')],
  documents: [
    SearchDoc(id: 'b1', kind: SearchDocKind.salesBill, number: 'B-0042', date: '2026-11-07', party: 'Malabar Traders'),
    SearchDoc(id: 'o1', kind: SearchDocKind.order, number: 'ORD-0042', date: '2026-11-07', party: 'Fresh Mart'),
  ],
  products: [SearchHit(id: 'p1', name: 'Onion', detail: 'ഉള്ളി')],
);

void main() {
  test('waits for a pause, needs 2 letters and ignores older answers', () async {
    final repo = _MockSearch();
    when(() => repo.search(any())).thenAnswer((_) async => const Ok(_results));
    final cubit = SearchCubit(repo, debounce: const Duration(milliseconds: 30))..changed('m');
    expect(cubit.state, isA<SearchIdle>());
    cubit
      ..changed('ma')
      ..changed('mal');
    expect(cubit.state, isA<SearchLoading>());
    verifyNever(() => repo.search(any()));
    await Future<void>.delayed(const Duration(milliseconds: 60));
    verify(() => repo.search('mal')).called(1);
    verifyNever(() => repo.search('ma'));
    expect(cubit.state, isA<SearchDone>());
    cubit.changed(' ');
    expect(cubit.state, isA<SearchIdle>());
    await cubit.close();
  });

  test('maps the server result', () {
    final r = searchResultsFromDto(
      api.SearchResultDtoOutput.fromJson({
        'customers': [
          {'id': 'c1', 'name': 'Malabar Traders', 'detail': null},
        ],
        'products': <Object>[],
        'documents': [
          {'id': 'r1', 'type': 'receipt', 'number': 'R-0001', 'date': '2026-11-07', 'party': 'Malabar Traders'},
        ],
      }),
    );
    expect(
      (r.customers.single.name, r.documents.single.kind, r.isEmpty),
      ('Malabar Traders', SearchDocKind.receipt, false),
    );
  });

  testWidgets('owner: a customer opens in Customers; bills can be shared, orders are listed', (tester) async {
    final repo = _MockSearch();
    when(() => repo.search('B-00')).thenAnswer((_) async => const Ok(_results));
    final authRepository = _MockAuth();
    when(() => authRepository.sessionExpired).thenAnswer((_) => const Stream.empty());
    final auth = AuthBloc(authRepository)..emit(AuthSignedIn(sessionFor(Role.owner)));
    final router = GoRouter(
      initialLocation: '/search',
      routes: [
        GoRoute(path: '/search', builder: (_, _) => const SearchPage()),
        GoRoute(path: '/customers/:id', builder: (_, state) => Text('customer ${state.pathParameters['id']}')),
      ],
    );
    await tester.pumpWidget(
      MultiRepositoryProvider(
        providers: [
          RepositoryProvider<SearchRepository>.value(value: repo),
          RepositoryProvider<DocumentsRepository>.value(value: _MockDocuments()),
        ],
        child: BlocProvider.value(
          value: auth,
          child: MaterialApp.router(theme: AppTheme.light(), routerConfig: router),
        ),
      ),
    );
    expect(find.textContaining('Type at least 2 letters'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'B-00');
    await tester.pump(const Duration(milliseconds: 350));
    await tester.pumpAndSettle();

    expect(find.text('Bill B-0042'), findsOneWidget);
    expect(find.text('Order ORD-0042'), findsOneWidget);
    expect(find.byTooltip('Share'), findsOneWidget);
    expect(find.text('Onion'), findsOneWidget);

    await tester.tap(find.text('Malabar Traders').first);
    await tester.pumpAndSettle();
    expect(find.text('customer c1'), findsOneWidget);
  });
}
