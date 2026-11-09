import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/connectivity/connectivity_cubit.dart';
import 'package:green_ledger_mobile/core/network/data_changes.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';

/// The signed-in frame: banners on top, the current tab, and the bottom bar built from
/// the user's permissions.
class HomeShell extends StatelessWidget {
  const HomeShell({required this.shell, super.key});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthBloc>().state;
    if (auth is! AuthSignedIn) return const SizedBox.shrink();
    final online = context.watch<ConnectivityCubit>().state;
    final tabs = tabsFor(auth.session);
    final current = AppTab.values[shell.currentIndex];
    final selected = tabs.indexOf(current);
    return Scaffold(
      body: Column(
        children: [
          if (!online) const TopBanner(message: 'No internet', icon: Icons.cloud_off),
          if (auth.session.readOnly)
            TopBanner(
              message: switch (auth.session.user.role) {
                Role.owner ||
                Role.manager => 'Subscription expired — entries are paused. Renew to keep adding entries.',
                _ => 'Subscription expired — entries are paused. Contact the owner.',
              },
              icon: Icons.lock_outline,
              warning: true,
            ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: !online || auth.session.readOnly,
              child: shell,
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selected < 0 ? 0 : selected,
        onDestinationSelected: (i) {
          final tab = tabs[i];
          // Tapping the current tab again (or a tab left on a Saved screen) goes back to
          // its first screen; another tab reloads, since its screens were kept alive with
          // the figures they last had.
          final branch = AppTab.values.indexOf(tab);
          shell.goBranch(branch, initialLocation: tab == current || SavedTabs.contains(branch));
          if (tab != current) DataChanges.maybeOf(context)?.notify();
        },
        destinations: [
          for (final tab in tabs)
            NavigationDestination(icon: Icon(tab.icon), selectedIcon: Icon(tab.selectedIcon), label: tab.label),
        ],
      ),
    );
  }
}
