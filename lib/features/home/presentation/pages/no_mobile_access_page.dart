import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';

/// Billing staff work in the admin panel only (ux-design section 1).
class NoMobileAccessPage extends StatelessWidget {
  const NoMobileAccessPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: const SafeArea(
      child: EmptyState(
        icon: Icons.desktop_windows_outlined,
        message: 'Billing works in the admin panel on a computer. This app is for agents, the godown and owners.',
      ),
    ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.only(bottom: Space.sm),
      child: BottomActionBar(
        child: MainButton(
          label: 'Sign out',
          onPressed: () => context.read<AuthBloc>().add(const AuthSignOutRequested()),
        ),
      ),
    ),
  );
}
