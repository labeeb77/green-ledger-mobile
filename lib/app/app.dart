import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/app/di.dart';
import 'package:green_ledger_mobile/app/router/app_router.dart';
import 'package:green_ledger_mobile/core/connectivity/connectivity_cubit.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthBloc _auth = AuthBloc(getIt<AuthRepository>())..add(const AuthStarted());
  late final GoRouter _router = buildRouter(_auth);

  @override
  void dispose() {
    _router.dispose();
    unawaited(_auth.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
    providers: [RepositoryProvider<AuthRepository>.value(value: getIt<AuthRepository>())],
    child: MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _auth),
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
