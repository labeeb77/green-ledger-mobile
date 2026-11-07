import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/app/di.dart';
import 'package:green_ledger_mobile/app/router/app_router.dart';
import 'package:green_ledger_mobile/core/connectivity/connectivity_cubit.dart';
import 'package:green_ledger_mobile/core/drafts/drafts_cubit.dart';
import 'package:green_ledger_mobile/core/local/local_database.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/theme/theme_cubit.dart';
import 'package:green_ledger_mobile/features/account/domain/account.dart';
import 'package:green_ledger_mobile/features/approvals/domain/approval.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/lock/presentation/bloc/lock_cubit.dart';
import 'package:green_ledger_mobile/features/lock/presentation/widgets/lock_gate.dart';
import 'package:green_ledger_mobile/features/notifications/presentation/bloc/notifications_cubit.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/rates/domain/rates.dart';
import 'package:green_ledger_mobile/features/receive/domain/receive.dart';
import 'package:green_ledger_mobile/features/returns/domain/returns.dart';
import 'package:green_ledger_mobile/features/search/domain/search.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/stock/domain/stock.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';
import 'package:green_ledger_mobile/features/wastage/domain/wastage.dart';

/// The PIN applies once signed in, after any forced password change.
bool _locks(AuthState auth) => auth is AuthSignedIn && !auth.session.mustChangePassword;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthBloc _auth = AuthBloc(getIt<AuthRepository>())..add(const AuthStarted());
  late final GoRouter _router = buildRouter(_auth);
  late final DraftsCubit _drafts = DraftsCubit(getIt(), getIt());
  late final LockCubit _lock = LockCubit(getIt(), getIt(), onLockedOut: () => _auth.add(const AuthSignOutRequested()));
  late final NotificationsCubit _notifications = NotificationsCubit(getIt());
  late final ThemeCubit _theme = ThemeCubit(getIt())..load().ignore();
  late final StreamSubscription<AuthState> _authChanges;
  late final AppLifecycleListener _lifecycle;

  @override
  void initState() {
    super.initState();
    _lifecycle = AppLifecycleListener(
      onPause: _lock.paused,
      onResume: () {
        unawaited(_lock.resumed());
        if (_auth.state is AuthSignedIn) unawaited(_notifications.load());
      },
    );
    var previous = _auth.state;
    _authChanges = _auth.stream.listen((state) {
      // The PIN lock: a restored session (app start) locks; a password sign-in doesn't.
      if (state is AuthSignedIn && !state.session.mustChangePassword) {
        unawaited(_lock.signedIn(state.session.user.id, restored: previous is AuthUnknown));
        unawaited(_notifications.load());
      } else if (state is AuthSignedOut) {
        unawaited(_lock.signedOut());
        _notifications.clear();
      }
      previous = state;
      // Drafts and caches belong to the signed-in user.
      final id = state is AuthSignedIn ? state.session.user.id : null;
      final user = getIt<CurrentUser>();
      if (user.id == id) return;
      user.id = id;
      unawaited(_drafts.watch());
    });
  }

  @override
  void dispose() {
    unawaited(_authChanges.cancel());
    _lifecycle.dispose();
    unawaited(_lock.close());
    unawaited(_notifications.close());
    unawaited(_theme.close());
    _router.dispose();
    unawaited(_drafts.close());
    unawaited(_auth.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
    providers: [
      RepositoryProvider<AccountRepository>.value(value: getIt<AccountRepository>()),
      RepositoryProvider<AuthRepository>.value(value: getIt<AuthRepository>()),
      RepositoryProvider<ApprovalsRepository>.value(value: getIt<ApprovalsRepository>()),
      RepositoryProvider<CashRepository>.value(value: getIt<CashRepository>()),
      RepositoryProvider<CollectRepository>.value(value: getIt<CollectRepository>()),
      RepositoryProvider<DispatchRepository>.value(value: getIt<DispatchRepository>()),
      RepositoryProvider<DocumentsRepository>.value(value: getIt<DocumentsRepository>()),
      RepositoryProvider<HomeRepository>.value(value: getIt<HomeRepository>()),
      RepositoryProvider<OrdersRepository>.value(value: getIt<OrdersRepository>()),
      RepositoryProvider<RatesRepository>.value(value: getIt<RatesRepository>()),
      RepositoryProvider<SearchRepository>.value(value: getIt<SearchRepository>()),
      RepositoryProvider<ReceiveRepository>.value(value: getIt<ReceiveRepository>()),
      RepositoryProvider<ReturnsRepository>.value(value: getIt<ReturnsRepository>()),
      RepositoryProvider<ShopsRepository>.value(value: getIt<ShopsRepository>()),
      RepositoryProvider<StockRepository>.value(value: getIt<StockRepository>()),
      RepositoryProvider<VisitRepository>.value(value: getIt<VisitRepository>()),
      RepositoryProvider<WastageRepository>.value(value: getIt<WastageRepository>()),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _auth),
        BlocProvider.value(value: _drafts),
        BlocProvider.value(value: _lock),
        BlocProvider.value(value: _notifications),
        BlocProvider.value(value: _theme),
        BlocProvider(create: (_) => ConnectivityCubit(getIt())),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        bloc: _theme,
        builder: (context, mode) => MaterialApp.router(
          title: 'Wholesale Manager',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: mode,
          routerConfig: _router,
          builder: (context, child) {
            final media = MediaQuery.of(context);
            return MediaQuery(
              data: media.copyWith(textScaler: media.textScaler.clamp(maxScaleFactor: maxTextScale)),
              child: BlocBuilder<AuthBloc, AuthState>(
                buildWhen: (a, b) => _locks(a) != _locks(b),
                builder: (_, auth) => LockGate(active: _locks(auth), child: child!),
              ),
            );
          },
        ),
      ),
    ),
  );
}
