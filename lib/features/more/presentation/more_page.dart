import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/theme/theme_cubit.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';

/// More: profile, theme, help & support, account deletion and sign out; expenses and
/// visit notes come later (ux-design section 3).
class MorePage extends StatelessWidget {
  const MorePage({super.key});

  Future<void> _confirmSignOut(BuildContext context) async {
    final auth = context.read<AuthBloc>();
    final yes = await showModalBottomSheet<bool>(
      context: context,
      showDragHandle: true,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(Space.lg, 0, Space.lg, Space.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Sign out of this phone?', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: Space.xl),
              FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('SIGN OUT')),
              const SizedBox(height: Space.sm),
              TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
            ],
          ),
        ),
      ),
    );
    if (yes ?? false) auth.add(const AuthSignOutRequested());
  }

  Future<void> _chooseTheme(BuildContext context, ThemeMode current) async {
    final theme = context.read<ThemeCubit>();
    final mode = await showModalBottomSheet<ThemeMode>(
      context: context,
      showDragHandle: true,
      builder: (context) => SafeArea(
        child: RadioGroup<ThemeMode>(
          groupValue: current,
          onChanged: (m) => Navigator.pop(context, m),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final m in ThemeMode.values) RadioListTile<ThemeMode>(value: m, title: Text(_themeLabel(m))),
            ],
          ),
        ),
      ),
    );
    if (mode != null) await theme.choose(mode);
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthBloc>().state;
    if (auth is! AuthSignedIn) return const SizedBox.shrink();
    final user = auth.session.user;
    final c = context.colors;
    return Scaffold(
      appBar: const TopBar(title: 'More'),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: Space.sm),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: c.brand,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              child: Text(user.name.isEmpty ? '?' : user.name[0].toUpperCase()),
            ),
            title: Text(user.name),
            subtitle: Text('${user.phone} · ${user.role.name[0].toUpperCase()}${user.role.name.substring(1)}'),
          ),
          ListTile(
            leading: const Icon(Icons.business_outlined),
            title: Text(auth.session.businessName),
            subtitle: const Text('Business'),
          ),
          const Divider(),
          BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, mode) => ListTile(
              leading: const Icon(Icons.brightness_6_outlined),
              title: const Text('Theme'),
              subtitle: Text(_themeLabel(mode)),
              onTap: () => unawaited(_chooseTheme(context, mode)),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.support_agent_outlined),
            title: const Text('Help & support'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => unawaited(context.push('/more/help')),
          ),
          ListTile(
            leading: const Icon(Icons.person_remove_outlined),
            title: const Text('Delete account'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => unawaited(context.push('/more/delete-account')),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: c.due),
            title: Text('Sign out', style: TextStyle(color: c.due)),
            onTap: () => unawaited(_confirmSignOut(context)),
          ),
        ],
      ),
    );
  }
}

String _themeLabel(ThemeMode mode) => switch (mode) {
  ThemeMode.system => 'Same as phone',
  ThemeMode.light => 'Light',
  ThemeMode.dark => 'Dark',
};
