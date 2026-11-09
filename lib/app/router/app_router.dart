import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/app/router/redirect.dart';
import 'package:green_ledger_mobile/features/account/presentation/pages/delete_account_page.dart';
import 'package:green_ledger_mobile/features/account/presentation/pages/help_page.dart';
import 'package:green_ledger_mobile/features/approvals/presentation/pages/approvals_page.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/auth/presentation/pages/change_password_page.dart';
import 'package:green_ledger_mobile/features/auth/presentation/pages/login_page.dart';
import 'package:green_ledger_mobile/features/auth/presentation/pages/splash_page.dart';
import 'package:green_ledger_mobile/features/cash/presentation/pages/cash_page.dart';
import 'package:green_ledger_mobile/features/cash/presentation/pages/handovers_page.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/collect/presentation/pages/collect_page.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';
import 'package:green_ledger_mobile/features/dispatch/presentation/pages/dispatch_order_page.dart';
import 'package:green_ledger_mobile/features/dispatch/presentation/pages/dispatch_page.dart';
import 'package:green_ledger_mobile/features/drafts/presentation/pages/drafts_page.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/agents_today_page.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/home_page.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/home_shell.dart';
import 'package:green_ledger_mobile/features/home/presentation/pages/no_mobile_access_page.dart';
import 'package:green_ledger_mobile/features/mistakes/presentation/pages/my_reports_page.dart';
import 'package:green_ledger_mobile/features/more/presentation/more_page.dart';
import 'package:green_ledger_mobile/features/notifications/presentation/pages/notifications_page.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/orders/presentation/pages/order_page.dart';
import 'package:green_ledger_mobile/features/rates/presentation/pages/rates_page.dart';
import 'package:green_ledger_mobile/features/receive/presentation/pages/receive_page.dart';
import 'package:green_ledger_mobile/features/returns/domain/returns.dart';
import 'package:green_ledger_mobile/features/returns/presentation/pages/returns_pages.dart';
import 'package:green_ledger_mobile/features/search/presentation/pages/search_page.dart';
import 'package:green_ledger_mobile/features/shops/presentation/pages/shop_detail_page.dart';
import 'package:green_ledger_mobile/features/shops/presentation/pages/shops_page.dart';
import 'package:green_ledger_mobile/features/stock/presentation/pages/stock_page.dart';
import 'package:green_ledger_mobile/features/visits/presentation/pages/visit_page.dart';
import 'package:green_ledger_mobile/features/wastage/presentation/pages/wastage_page.dart';

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
    GoRoute(path: Paths.drafts, builder: (_, _) => const DraftsPage()),
    GoRoute(path: Paths.search, builder: (_, _) => const SearchPage()),
    GoRoute(path: Paths.notifications, builder: (_, _) => const NotificationsPage()),
    StatefulShellRoute.indexedStack(
      builder: (_, _, shell) => HomeShell(shell: shell),
      branches: [
        for (final tab in AppTab.values)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: tab.path,
                builder: (context, state) => _tabPage(context, tab, state),
                routes: _tabRoutes(tab),
              ),
            ],
          ),
      ],
    ),
  ],
);

Widget _tabPage(BuildContext context, AppTab tab, GoRouterState state) => switch (tab) {
  AppTab.home => const HomePage(),
  AppTab.more => const MorePage(),
  AppTab.shops => const ShopsPage(),
  AppTab.cash => const CashPage(),
  AppTab.approvals => const ApprovalsPage(),
  // `?then=order|collect` opens it as a picker (Home SALE / COLLECT).
  AppTab.customers => ShopsPage(
    title: 'Customers',
    basePath: AppTab.customers.path,
    pick: ShopPick.values.asNameMap()[state.uri.queryParameters['then']],
    myUserId: switch (context.read<AuthBloc>().state) {
      AuthSignedIn(:final session) => session.user.id,
      _ => null,
    },
  ),
  AppTab.stock => const StockPage(),
};

/// Screens pushed inside a tab, so the bottom bar stays.
List<RouteBase> _tabRoutes(AppTab tab) => switch (tab) {
  // Opened from the Home card "Cash handovers" (owner/manager).
  AppTab.home => [
    GoRoute(path: 'handovers', builder: (_, _) => const HandoversPage()),
    GoRoute(path: 'agents', builder: (_, _) => const AgentsTodayPage()),
    GoRoute(path: 'rates', builder: (_, _) => const RatesPage()),
    GoRoute(path: 'receive', builder: (_, _) => const ReceivePage()),
    GoRoute(
      path: 'dispatch',
      builder: (_, _) => const DispatchPage(),
      routes: [
        GoRoute(
          path: 'order',
          builder: (_, state) => DispatchOrderPage(order: state.extra! as DispatchOrder),
        ),
      ],
    ),
    GoRoute(path: 'wastage', builder: (_, _) => const WastagePage()),
    GoRoute(
      path: 'returns',
      builder: (_, _) => const ReturnsPage(),
      routes: [
        GoRoute(
          path: 'inspect',
          builder: (_, state) => InspectPage(ret: state.extra! as ReturnToInspect),
        ),
      ],
    ),
  ],
  AppTab.shops || AppTab.customers => _shopRoutes(tab.path),
  AppTab.more => [
    GoRoute(path: 'help', builder: (_, _) => const HelpPage()),
    GoRoute(path: 'mistakes', builder: (_, _) => const MyReportsPage()),
    GoRoute(
      path: 'delete-account',
      builder: (context, _) => DeleteAccountPage(
        isOwner: switch (context.read<AuthBloc>().state) {
          AuthSignedIn(:final session) => session.user.role == Role.owner,
          _ => false,
        },
      ),
    ),
  ],
  _ => const [],
};

/// The shop detail and the flows it opens, under `/shops` (agents) or `/customers`.
List<RouteBase> _shopRoutes(String basePath) => [
  GoRoute(
    path: ':id',
    builder: (_, state) => ShopDetailPage(shopId: state.pathParameters['id']!, basePath: basePath),
    routes: [
      // Opened from the shop detail or the Customers picker, which pass the shop as `extra`.
      GoRoute(
        path: 'collect',
        builder: (context, state) =>
            CollectPage(target: state.extra! as CollectTarget, canChangeAllocation: _ownerOrManager(context)),
      ),
      GoRoute(
        path: 'order',
        builder: (context, state) =>
            OrderPage(target: state.extra! as OrderTarget, canEditRate: _ownerOrManager(context)),
      ),
      // `extra` is the shop name.
      GoRoute(
        path: 'visit',
        builder: (_, state) => VisitPage(customerId: state.pathParameters['id']!, shopName: state.extra! as String),
      ),
    ],
  ),
];

bool _ownerOrManager(BuildContext context) => switch (context.read<AuthBloc>().state) {
  AuthSignedIn(:final session) => session.user.role == Role.owner || session.user.role == Role.manager,
  _ => false,
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
