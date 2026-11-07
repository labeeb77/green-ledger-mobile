import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';

/// The Check step before every save (ux-design principle 4): the entry in plain words,
/// SAVE at the bottom and Back. Posted entries can't be edited (D10), so this is the
/// safety net.
class CheckScreen extends StatelessWidget {
  const CheckScreen({
    required this.title,
    required this.lines,
    required this.onSave,
    required this.onBack,
    this.saving = false,
    this.failure,
    this.saveLabel = 'SAVE',
    super.key,
  });

  /// e.g. "Collect ₹8,000 from Malabar Traders".
  final String title;
  final List<Widget> lines;
  final VoidCallback onSave;
  final VoidCallback onBack;
  final bool saving;
  final AppFailure? failure;

  /// "SEND AGAIN" after a network failure.
  final String saveLabel;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Expanded(
        child: ListView(
          padding: const EdgeInsets.all(Space.lg),
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: Space.lg),
            ...lines,
            if (failure case final f?) ...[const SizedBox(height: Space.lg), FailureMessage(f)],
          ],
        ),
      ),
      BottomActionBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MainButton(label: saveLabel, loading: saving, onPressed: saving ? null : onSave),
            const SizedBox(height: Space.sm),
            TextButton(onPressed: saving ? null : onBack, child: const Text('Back')),
          ],
        ),
      ),
    ],
  );
}
