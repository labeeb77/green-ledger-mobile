import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';

abstract final class Paths {
  static const splash = '/splash';
  static const login = '/login';
  static const changePassword = '/change-password';
  static const noMobileAccess = '/no-mobile-access';

  /// Entries kept on the phone (the top-bar ⏳); open to every signed-in user.
  static const drafts = '/drafts';
}

/// Where [location] should go for [auth]; `null` keeps it. Pure, so it is unit tested.
String? redirectFor(AuthState auth, String location) {
  switch (auth) {
    case AuthUnknown() || AuthRestoreFailed():
      return location == Paths.splash ? null : Paths.splash;
    case AuthSignedOut():
      return location == Paths.login ? null : Paths.login;
    case AuthSignedIn(:final session):
      if (session.mustChangePassword) {
        return location == Paths.changePassword ? null : Paths.changePassword;
      }
      final tabs = tabsFor(session);
      if (tabs.isEmpty) return location == Paths.noMobileAccess ? null : Paths.noMobileAccess;
      if (location == Paths.drafts) return null;
      final tab = AppTab.values.where((t) => location == t.path || location.startsWith('${t.path}/')).firstOrNull;
      if (tab == null || !tabs.contains(tab)) return AppTab.home.path;
      return null;
  }
}
