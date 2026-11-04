import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Space.lg),
          child: Column(
            children: [
              const Spacer(),
              Icon(Icons.eco, size: 56, color: context.colors.brand),
              const SizedBox(height: Space.md),
              Text('Wholesale Manager', style: Theme.of(context).textTheme.titleLarge),
              const Spacer(),
              if (state is AuthRestoreFailed) ...[
                FailureMessage(state.failure),
                const SizedBox(height: Space.lg),
                MainButton(label: 'Try again', onPressed: () => context.read<AuthBloc>().add(const AuthStarted())),
              ] else
                const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
