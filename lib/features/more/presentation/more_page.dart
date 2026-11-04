import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';

/// More: profile and sign out now; expenses, visit notes, PIN, help and account deletion
/// come with their milestones (ux-design section 3).
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
