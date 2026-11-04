import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/app/router/redirect.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/auth/presentation/pages/change_password_page.dart';
import 'package:green_ledger_mobile/features/auth/presentation/pages/login_page.dart';
import 'package:green_ledger_mobile/features/auth/presentation/pages/splash_page.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/coming_soon_page.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/home_page.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/home_shell.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/no_mobile_access_page.dart';
import 'package:green_ledger_mobile/features/more/presentation/more_page.dart';

/// All routes. Redirects follow the [AuthBloc] (see [redirectFor]); each tab is a branch
/// of one [StatefulShellRoute] so it keeps its own navigation stack.
GoRouter buildRouter(AuthBloc auth) => GoRouter(
  initialLocation: Paths.splash,
  refreshListenable: _StreamListenable(auth.stream),
  redirect: (context, state) => redirectFor(auth.state, state.matchedLocation),
  routes: [
    GoRoute(path: Paths.splash, builder: (_, _) => const SplashPage()),
    GoRoute(path: Paths.login, builder: (_, _) => const LoginPage()),
    GoRoute(path: Paths.changePassword, builder: (_, _) => const ChangePasswordPage()),
    GoRoute(path: Paths.noMobileAccess, builder: (_, _) => const NoMobileAccessPage()),
    StatefulShellRoute.indexedStack(
      builder: (_, _, shell) => HomeShell(shell: shell),
      branches: [
        for (final tab in AppTab.values)
          StatefulShellBranch(
            routes: [GoRoute(path: tab.path, builder: (_, _) => _tabPage(tab))],
          ),
      ],
    ),
  ],
);

Widget _tabPage(AppTab tab) => switch (tab) {
  AppTab.home => const HomePage(),
  AppTab.more => const MorePage(),
  AppTab.shops || AppTab.cash => ComingSoonPage(title: tab.label, milestone: 'M1–M2'),
  AppTab.approvals => const ComingSoonPage(title: 'Approvals', milestone: 'M2'),
  AppTab.customers => const ComingSoonPage(title: 'Customers', milestone: 'M4'),
  AppTab.stock => const ComingSoonPage(title: 'Stock', milestone: 'M3'),
};

/// Re-runs redirects whenever the auth state changes.
class _StreamListenable extends ChangeNotifier {
  _StreamListenable(Stream<Object?> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<Object?> _subscription;

  @override
  void dispose() {
    unawaited(_subscription.cancel());
    super.dispose();
  }
}
