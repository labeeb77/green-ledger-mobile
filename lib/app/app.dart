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
import 'package:green_ledger_mobile/features/approvals/domain/approval.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/receive/domain/receive.dart';
import 'package:green_ledger_mobile/features/returns/domain/returns.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/stock/domain/stock.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';
import 'package:green_ledger_mobile/features/wastage/domain/wastage.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthBloc _auth = AuthBloc(getIt<AuthRepository>())..add(const AuthStarted());
  late final GoRouter _router = buildRouter(_auth);
  late final DraftsCubit _drafts = DraftsCubit(getIt(), getIt());
  late final StreamSubscription<AuthState> _authChanges;

  @override
  void initState() {
    super.initState();
    // Drafts and caches belong to the signed-in user.
    _authChanges = _auth.stream.listen((state) {
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
    _router.dispose();
    unawaited(_drafts.close());
    unawaited(_auth.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
    providers: [
      RepositoryProvider<AuthRepository>.value(value: getIt<AuthRepository>()),
      RepositoryProvider<ApprovalsRepository>.value(value: getIt<ApprovalsRepository>()),
      RepositoryProvider<CashRepository>.value(value: getIt<CashRepository>()),
      RepositoryProvider<CollectRepository>.value(value: getIt<CollectRepository>()),
      RepositoryProvider<DispatchRepository>.value(value: getIt<DispatchRepository>()),
      RepositoryProvider<DocumentsRepository>.value(value: getIt<DocumentsRepository>()),
      RepositoryProvider<HomeRepository>.value(value: getIt<HomeRepository>()),
      RepositoryProvider<OrdersRepository>.value(value: getIt<OrdersRepository>()),
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
        BlocProvider(create: (_) => ConnectivityCubit(getIt())),
      ],
      child: MaterialApp.router(
        title: 'Wholesale Manager',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        routerConfig: _router,
        builder: (context, child) {
          final media = MediaQuery.of(context);
          return MediaQuery(
            data: media.copyWith(textScaler: media.textScaler.clamp(maxScaleFactor: maxTextScale)),
            child: child!,
          );
        },
      ),
    ),
  );
}
