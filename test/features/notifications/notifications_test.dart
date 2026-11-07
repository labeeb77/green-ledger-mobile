import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/theme/theme_cubit.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/notifications/data/notifications_repository_impl.dart';
import 'package:green_ledger_mobile/features/notifications/domain/notifications.dart';
import 'package:green_ledger_mobile/features/notifications/presentation/bloc/notifications_cubit.dart';
import 'package:green_ledger_mobile/features/notifications/presentation/pages/notifications_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/sessions.dart';

class _MockRepo extends Mock implements NotificationsRepository;

class _MockAuth extends Mock implements AuthRepository;

class _MemoryTheme implements ThemeStore {
  String? saved;

  @override
  Future<String?> readTheme() async => saved;

  @override
  Future<void> writeTheme(String mode) async => saved = mode;
}

final _approval = AppNotification(
  id: 'n1',
  type: 'approval_requested',
  title: 'Sale below minimum: Malabar Traders',
  body: 'Onion at ₹35',
  read: false,
  createdAt: DateTime.utc(2026, 11, 7, 5),
);
final _expiry = AppNotification(
  id: 'n2',
  type: 'subscription_expiry',
  title: 'Subscription ends in 3 days',
  read: true,
  createdAt: DateTime.utc(2026, 11, 6, 5),
);

void main() {
  test('maps the server inbox', () {
    final inbox = inboxFromDto(
      api.NotificationListDtoOutput.fromJson({
        'unread': 1,
        'items': [
          {
            'id': 'n1',
            'type': 'handover_requested',
            'title': 'Cash handover: ₹5,000',
            'body': 'Count the cash and confirm it.',
            'link': '/money?tab=handovers',
            'read': false,
            'createdAt': '2026-11-07T05:00:00.000Z',
          },
        ],
      }),
    );
    expect((inbox.unread, inbox.items.single.type, inbox.items.single.read), (1, 'handover_requested', false));
  });

  test('a tap opens the entry the user can act on', () {
    final owner = sessionFor(Role.owner);
    final agent = sessionFor(Role.agent);
    expect(notificationPath('approval_requested', owner), '/approvals');
    expect(notificationPath('handover_requested', owner), '/home/handovers');
    expect(notificationPath('handover_decided', agent), '/cash');
    expect(notificationPath('approval_requested', agent), isNull);
    expect(notificationPath('subscription_expiry', owner), isNull);
  });

  test('marking read drops the count at once; a failed call keeps it read on screen', () async {
    final repo = _MockRepo();
    when(repo.inbox).thenAnswer((_) async => Ok(Inbox(unread: 1, items: [_approval, _expiry])));
    when(() => repo.markRead('n1'))
        .thenAnswer((_) async => const Err(AppFailure(kind: FailureKind.network, message: 'No internet')));
    final cubit = NotificationsCubit(repo);
    await cubit.load();
    expect(cubit.state.unread, 1);
    await cubit.markRead(_approval);
    expect(cubit.state.unread, 0);
    expect(cubit.state.inbox!.items.first.read, isTrue);
    expect(cubit.state.failure, isNull);
    await cubit.markRead(_expiry);
    verifyNever(() => repo.markRead('n2'));
  });

  testWidgets('inbox: unread first in bold, mark all read, a tap opens Approvals', (tester) async {
    final repo = _MockRepo();
    when(repo.inbox).thenAnswer((_) async => Ok(Inbox(unread: 1, items: [_approval, _expiry])));
    when(() => repo.markRead(any()))
        .thenAnswer((_) async => Ok(Inbox(unread: 0, items: [_approval.markedRead(), _expiry])));
    final authRepository = _MockAuth();
    when(() => authRepository.sessionExpired).thenAnswer((_) => const Stream.empty());
    final auth = AuthBloc(authRepository)..emit(AuthSignedIn(sessionFor(Role.owner)));
    final router = GoRouter(
      initialLocation: '/notifications',
      routes: [
        GoRoute(path: '/notifications', builder: (_, _) => const NotificationsPage()),
        GoRoute(path: '/approvals', builder: (_, _) => const Text('approvals')),
      ],
    );
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider.value(value: auth),
          BlocProvider(create: (_) => NotificationsCubit(repo)),
        ],
        child: MaterialApp.router(theme: AppTheme.light(), routerConfig: router),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Sale below minimum: Malabar Traders'), findsOneWidget);
    expect(find.text('Subscription ends in 3 days'), findsOneWidget);
    expect(find.text('Mark all read'), findsOneWidget);

    await tester.tap(find.text('Sale below minimum: Malabar Traders'));
    await tester.pumpAndSettle();
    expect(find.text('approvals'), findsOneWidget);
    verify(() => repo.markRead('n1')).called(1);
  });

  test('the theme choice is kept for the next start', () async {
    final store = _MemoryTheme();
    final theme = ThemeCubit(store);
    await theme.load();
    expect(theme.state, ThemeMode.system);
    await theme.choose(ThemeMode.dark);
    expect(store.saved, 'dark');

    final next = ThemeCubit(store);
    await next.load();
    expect(next.state, ThemeMode.dark);
  });
}
