import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/app/router/redirect.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';

import '../helpers/sessions.dart';

void main() {
  group('tabsFor (ux-design section 3)', () {
    test('agent: Home, Shops, Cash, More', () {
      expect(tabsFor(sessionFor(Role.agent)), [AppTab.home, AppTab.shops, AppTab.cash, AppTab.more]);
    });
    test('owner and manager: Home, Approvals, Customers, More', () {
      for (final role in [Role.owner, Role.manager]) {
        expect(tabsFor(sessionFor(role)), [AppTab.home, AppTab.approvals, AppTab.customers, AppTab.more]);
      }
    });
    test('godown: Home, Stock, More', () {
      expect(tabsFor(sessionFor(Role.godown)), [AppTab.home, AppTab.stock, AppTab.more]);
    });
    test('billing has no mobile tabs', () {
      expect(tabsFor(sessionFor(Role.billing)), isEmpty);
    });
  });

  test('home cards keep the fixed order and follow permissions', () {
    expect(homeCardsFor(sessionFor(Role.owner)), [
      HomeCard.approvals,
      HomeCard.cash,
      HomeCard.agent,
      HomeCard.godown,
      HomeCard.rates,
    ]);
    expect(homeCardsFor(sessionFor(Role.agent)), [HomeCard.agent]);
    expect(homeCardsFor(sessionFor(Role.godown)), [HomeCard.godown]);
  });

  group('redirectFor', () {
    test('splash while the session is restored or could not be checked', () {
      expect(redirectFor(const AuthUnknown(), '/home'), Paths.splash);
      expect(redirectFor(const AuthUnknown(), Paths.splash), isNull);
      const offline = AppFailure(kind: FailureKind.network, message: 'No internet');
      expect(redirectFor(const AuthRestoreFailed(offline), '/login'), Paths.splash);
    });

    test('signed out goes to login', () {
      expect(redirectFor(const AuthSignedOut(), '/home'), Paths.login);
      expect(redirectFor(const AuthSignedOut(), Paths.login), isNull);
    });

    test('a temporary password must be changed first', () {
      final auth = AuthSignedIn(sessionFor(Role.agent, mustChangePassword: true));
      expect(redirectFor(auth, '/home'), Paths.changePassword);
      expect(redirectFor(auth, Paths.changePassword), isNull);
    });

    test('signed in: auth screens and tabs the user lacks go home', () {
      final agent = AuthSignedIn(sessionFor(Role.agent));
      expect(redirectFor(agent, Paths.login), '/home');
      expect(redirectFor(agent, Paths.splash), '/home');
      expect(redirectFor(agent, '/approvals'), '/home');
      expect(redirectFor(agent, '/shops'), isNull);
      expect(redirectFor(agent, '/cash'), isNull);
    });

    test('billing is told to use the admin panel', () {
      final billing = AuthSignedIn(sessionFor(Role.billing));
      expect(redirectFor(billing, '/home'), Paths.noMobileAccess);
      expect(redirectFor(billing, Paths.noMobileAccess), isNull);
    });
  });
}
