import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';

void main() {
  testWidgets('a tab showing a Saved screen is marked until the screen goes', (tester) async {
    final router = GoRouter(
      initialLocation: '/a',
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (_, _, shell) => Scaffold(body: shell),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/a',
                  builder: (_, _) => const Text('Tab A'),
                  routes: [
                    GoRoute(
                      path: 'saved',
                      builder: (_, _) => SavedScreen(title: 'Saved R-0042', mainLabel: 'SHARE', onMain: () {}),
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [GoRoute(path: '/b', builder: (_, _) => const Text('Tab B'))],
            ),
          ],
        ),
      ],
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(MaterialApp.router(theme: AppTheme.light(), routerConfig: router));
    expect(SavedTabs.contains(0), isFalse);

    router.go('/a/saved');
    await tester.pumpAndSettle();
    expect(SavedTabs.contains(0), isTrue);
    expect(SavedTabs.contains(1), isFalse);

    router.go('/a');
    await tester.pumpAndSettle();
    expect(SavedTabs.contains(0), isFalse);
  });
}
