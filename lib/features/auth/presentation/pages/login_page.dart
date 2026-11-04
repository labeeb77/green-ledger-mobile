import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/login_cubit.dart';

/// Mobile number + password (ux-design section 10).
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => LoginCubit(
      context.read<AuthRepository>(),
      onSignedIn: (session) => context.read<AuthBloc>().add(AuthSessionChanged(session)),
    ),
    child: const _LoginView(),
  );
}

class _LoginView extends StatefulWidget {
  const _LoginView();

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _form = GlobalKey<FormState>();
  bool _showPassword = false;

  @override
  void dispose() {
    _phone.dispose();
    _password.dispose();
    super.dispose();
  }

  bool _submitted = false;

  void _submit() {
    setState(() => _submitted = true);
    if (!_form.currentState!.validate()) return;
    FocusScope.of(context).unfocus();
    unawaited(context.read<LoginCubit>().submit(phone: _phone.text, password: _password.text));
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginCubit>().state;
    final auth = context.watch<AuthBloc>().state;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _form,
          // Errors show after the first submit, then clear as the user fixes them.
          autovalidateMode: _submitted ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              const SizedBox(height: Space.xxl),
              Icon(Icons.eco, size: 48, color: context.colors.brand),
              const SizedBox(height: Space.md),
              Text('Wholesale Manager', style: text.headlineSmall),
              const SizedBox(height: Space.xs),
              Text('Sign in with your mobile number', style: text.bodySmall),
              const SizedBox(height: Space.xl),
              if (auth is AuthSignedOut && auth.expired) ...[
                const TopBanner(message: 'You were signed out. Sign in again.', icon: Icons.lock_clock, warning: true),
                const SizedBox(height: Space.lg),
              ],
              TextFormField(
                controller: _phone,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                autofillHints: const [AutofillHints.telephoneNumber],
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9+ ]')),
                  LengthLimitingTextInputFormatter(16),
                ],
                decoration: const InputDecoration(labelText: 'Mobile number', prefixIcon: Icon(Icons.phone_outlined)),
                validator: (v) =>
                    (v ?? '').replaceAll(RegExp(r'\D'), '').length < 10 ? 'Enter the 10-digit mobile number' : null,
              ),
              const SizedBox(height: Space.lg),
              TextFormField(
                controller: _password,
                obscureText: !_showPassword,
                textInputAction: TextInputAction.done,
                autofillHints: const [AutofillHints.password],
                onFieldSubmitted: (_) => _submit(),
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    tooltip: _showPassword ? 'Hide password' : 'Show password',
                    icon: Icon(_showPassword ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() => _showPassword = !_showPassword),
                  ),
                ),
                validator: (v) => (v ?? '').isEmpty ? 'Enter your password' : null,
              ),
              if (state.failure != null) ...[const SizedBox(height: Space.lg), FailureMessage(state.failure!)],
              const SizedBox(height: Space.xl),
              MainButton(label: 'Sign in', loading: state.submitting, onPressed: _submit),
              const SizedBox(height: Space.lg),
              Text(
                'Forgot your password? Ask the owner to reset it.',
                textAlign: TextAlign.center,
                style: text.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
