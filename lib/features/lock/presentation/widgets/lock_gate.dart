import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/app_numpad.dart';
import 'package:green_ledger_mobile/features/lock/domain/pin.dart';
import 'package:green_ledger_mobile/features/lock/presentation/bloc/lock_cubit.dart';

/// Covers the app with the PIN screens while [LockCubit] isn't open; the app below keeps
/// its state but isn't shown.
class LockGate extends StatelessWidget {
  const LockGate({required this.child, this.active = true, super.key});

  final Widget child;

  /// False while no PIN applies (signed out, forced password change).
  final bool active;

  @override
  Widget build(BuildContext context) => BlocBuilder<LockCubit, AppLockState>(
    builder: (context, state) {
      final cover = !active
          ? null
          : switch (state) {
              LockOpen() => null,
              LockSetup(offerBiometrics: true) => const _BiometricsOffer(),
              LockSetup() => const _SetPin(),
              final LockLocked s => _Unlock(s),
            };
      return Stack(
        children: [
          Offstage(
            offstage: cover != null,
            child: TickerMode(enabled: cover == null, child: child),
          ),
          ?cover,
        ],
      );
    },
  );
}

class _SetPin extends StatefulWidget {
  const _SetPin();

  @override
  State<_SetPin> createState() => _SetPinState();
}

class _SetPinState extends State<_SetPin> {
  String _digits = '';
  String? _first;
  bool _mismatch = false;

  void _changed(String digits) {
    setState(() => _digits = digits);
    if (digits.length < pinLength) return;
    final first = _first;
    if (first == null) {
      setState(() {
        _first = digits;
        _digits = '';
        _mismatch = false;
      });
    } else if (first == digits) {
      unawaited(context.read<LockCubit>().setPin(digits));
    } else {
      setState(() {
        _first = null;
        _digits = '';
        _mismatch = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) => _PinScreen(
    title: _first == null ? 'Set a 4-digit PIN' : 'Type the PIN again',
    message: _mismatch ? 'The PINs didn’t match. Start again.' : 'You’ll use it to open the app on this phone.',
    error: _mismatch,
    digits: _digits,
    onChanged: _changed,
  );
}

class _Unlock extends StatefulWidget {
  const _Unlock(this.state);

  final LockLocked state;

  @override
  State<_Unlock> createState() => _UnlockState();
}

class _UnlockState extends State<_Unlock> {
  String _digits = '';

  @override
  void didUpdateWidget(_Unlock old) {
    super.didUpdateWidget(old);
    if (widget.state != old.state) _digits = '';
  }

  void _changed(String digits) {
    setState(() => _digits = digits);
    if (digits.length == pinLength) unawaited(context.read<LockCubit>().enterPin(digits));
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.state;
    final cubit = context.read<LockCubit>();
    final left = s.attemptsLeft;
    return _PinScreen(
      title: 'Enter your PIN',
      message: s.wrong
          ? (left == 1 ? 'Wrong PIN. 1 try left, then you sign in with your password.' : 'Wrong PIN. $left tries left.')
          : 'Wholesale Manager is locked.',
      error: s.wrong,
      digits: _digits,
      onChanged: _changed,
      actions: [
        if (s.biometrics)
          OutlinedButton.icon(
            icon: const Icon(Icons.fingerprint),
            label: const Text('USE FINGERPRINT / FACE ID'),
            onPressed: () => unawaited(cubit.unlockWithBiometrics()),
          ),
        TextButton(
          onPressed: () => unawaited(cubit.forgotPin()),
          child: const Text('Forgot PIN? Sign in with password'),
        ),
      ],
    );
  }
}

class _BiometricsOffer extends StatelessWidget {
  const _BiometricsOffer();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LockCubit>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Space.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Icon(Icons.fingerprint, size: 72, color: context.colors.brand),
              const SizedBox(height: Space.lg),
              Text(
                'Use fingerprint or Face ID too?',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: Space.sm),
              const Text('Open the app without typing the PIN. The PIN still works.', textAlign: TextAlign.center),
              const Spacer(),
              FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(Touch.mainButton)),
                onPressed: () => unawaited(cubit.chooseBiometrics(on: true)),
                child: const Text('YES, USE IT'),
              ),
              const SizedBox(height: Space.sm),
              TextButton(onPressed: () => unawaited(cubit.chooseBiometrics(on: false)), child: const Text('Not now')),
            ],
          ),
        ),
      ),
    );
  }
}

class _PinScreen extends StatelessWidget {
  const _PinScreen({
    required this.title,
    required this.message,
    required this.digits,
    required this.onChanged,
    this.error = false,
    this.actions = const [],
  });

  final String title;
  final String message;
  final String digits;
  final ValueChanged<String> onChanged;
  final bool error;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Icon(Icons.lock_outline, size: 40, color: c.brand),
            const SizedBox(height: Space.md),
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: Space.sm),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.xl),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(color: error ? c.due : c.muted),
              ),
            ),
            const SizedBox(height: Space.xl),
            Semantics(
              label: '${digits.length} of $pinLength digits',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < pinLength; i++)
                    Container(
                      key: ValueKey('pin-dot-$i'),
                      margin: const EdgeInsets.symmetric(horizontal: Space.sm),
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i < digits.length ? c.brand : Colors.transparent,
                        border: Border.all(color: c.brand, width: 2),
                      ),
                    ),
                ],
              ),
            ),
            const Spacer(),
            ...actions,
            Padding(
              padding: const EdgeInsets.all(Space.md),
              child: AppNumpad(value: digits, onChanged: onChanged, maxLength: pinLength, code: true),
            ),
          ],
        ),
      ),
    );
  }
}
