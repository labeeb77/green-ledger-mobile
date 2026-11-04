import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/change_password_cubit.dart';

/// Forced at first sign-in with a temporary password (ux-design section 10).
class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => ChangePasswordCubit(
      context.read<AuthRepository>(),
      onChanged: (session) => context.read<AuthBloc>().add(AuthSessionChanged(session)),
    ),
    child: const _ChangePasswordView(),
  );
}

class _ChangePasswordView extends StatefulWidget {
  const _ChangePasswordView();

  @override
  State<_ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<_ChangePasswordView> {
  final _current = TextEditingController();
  final _next = TextEditingController();
  final _confirm = TextEditingController();
  final _form = GlobalKey<FormState>();

  @override
  void dispose() {
    _current.dispose();
    _next.dispose();
    _confirm.dispose();
    super.dispose();
  }

  bool _submitted = false;

  void _submit() {
    setState(() => _submitted = true);
    if (!_form.currentState!.validate()) return;
    FocusScope.of(context).unfocus();
    unawaited(context.read<ChangePasswordCubit>().submit(currentPassword: _current.text, newPassword: _next.text));
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ChangePasswordCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set your password'),
        actions: [
          TextButton(
            onPressed: () => context.read<AuthBloc>().add(const AuthSignOutRequested()),
            child: const Text('Sign out'),
          ),
        ],
      ),
      body: Form(
        key: _form,
        // Errors show after the first submit, then clear as the user fixes them.
        autovalidateMode: _submitted ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
        child: ListView(
          padding: const EdgeInsets.all(Space.lg),
          children: [
            Text(
              'You signed in with a temporary password. Choose your own to continue.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: Space.xl),
            TextFormField(
              controller: _current,
              obscureText: true,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(labelText: 'Temporary password'),
              validator: (v) => (v ?? '').isEmpty ? 'Enter the temporary password' : null,
            ),
            const SizedBox(height: Space.lg),
            TextFormField(
              controller: _next,
              obscureText: true,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: 'New password',
                helperText: 'At least 8 characters, with a letter and a number',
              ),
              validator: (v) {
                final problem = newPasswordProblem(v ?? '');
                if (problem != null) return problem;
                return v == _current.text ? 'New password must be different from the current one' : null;
              },
            ),
            const SizedBox(height: Space.lg),
            TextFormField(
              controller: _confirm,
              obscureText: true,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) => _submit(),
              decoration: const InputDecoration(labelText: 'New password again'),
              validator: (v) => v != _next.text ? 'The passwords do not match' : null,
            ),
            if (state.failure != null) ...[const SizedBox(height: Space.lg), FailureMessage(state.failure!)],
          ],
        ),
      ),
      bottomNavigationBar: BottomActionBar(
        child: MainButton(label: 'Save password', loading: state.submitting, onPressed: _submit),
      ),
    );
  }
}
