import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';

/// The one main action of a screen: full width, 56 dp, at the bottom within thumb reach
/// (ux-design principle 1). Shows a spinner while [loading] and ignores taps then.
class MainButton extends StatelessWidget {
  const MainButton({required this.label, required this.onPressed, this.loading = false, super.key});

  final String label;
  final VoidCallback? onPressed;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final onPrimary = Theme.of(context).colorScheme.onPrimary;
    return FilledButton(
      onPressed: loading || onPressed == null
          ? null
          : () {
              unawaited(HapticFeedback.lightImpact());
              onPressed!();
            },
      child: loading
          ? SizedBox.square(dimension: 24, child: CircularProgressIndicator(strokeWidth: 3, color: onPrimary))
          : Text(label.toUpperCase()),
    );
  }
}

/// Pins [child] (usually a [MainButton]) to the bottom of a screen above the safe area.
class BottomActionBar extends StatelessWidget {
  const BottomActionBar({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => SafeArea(
    top: false,
    child: Padding(padding: const EdgeInsets.fromLTRB(Space.lg, Space.sm, Space.lg, Space.lg), child: child),
  );
}
