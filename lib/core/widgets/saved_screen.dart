import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';

/// A full green confirmation with ✓ and the number, then the next action (ux-design
/// section 7).
class SavedScreen extends StatelessWidget {
  const SavedScreen({
    required this.title,
    required this.mainLabel,
    required this.onMain,
    this.subtitle,
    this.onDone,
    this.mainLoading = false,
    this.failure,
    super.key,
  });

  /// e.g. "Saved R-0042" (the icon above is the ✓; the font has no ✓ glyph).
  final String title;
  final String? subtitle;
  final String mainLabel;
  final VoidCallback onMain;

  /// The "Done" text link under the main button; hidden when null.
  final VoidCallback? onDone;

  /// The main action is running (e.g. preparing the PDF to share).
  final bool mainLoading;

  /// Why the main action failed; the entry itself is saved.
  final AppFailure? failure;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return _MarkSavedTab(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(Space.xl),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check_circle, size: 96, color: c.paid),
                    const SizedBox(height: Space.lg),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: c.paid),
                    ),
                    if (subtitle case final s?) ...[
                      const SizedBox(height: Space.sm),
                      Text(s, textAlign: TextAlign.center),
                    ],
                    if (failure case final f?) ...[const SizedBox(height: Space.xl), FailureMessage(f)],
                  ],
                ),
              ),
            ),
          ),
          BottomActionBar(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MainButton(label: mainLabel, loading: mainLoading, onPressed: mainLoading ? null : onMain),
                if (onDone case final done?) ...[
                  const SizedBox(height: Space.sm),
                  TextButton(onPressed: done, child: const Text('Done')),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// The bottom-bar tabs that are showing a [SavedScreen]. Switching to one of them opens
/// its first screen, so a tab left on "Saved" doesn't reopen on it.
abstract final class SavedTabs {
  static final Set<int> _tabs = {};

  static bool contains(int branch) => _tabs.contains(branch);
}

class _MarkSavedTab extends StatefulWidget {
  const _MarkSavedTab({required this.child});

  final Widget child;

  @override
  State<_MarkSavedTab> createState() => _MarkSavedTabState();
}

class _MarkSavedTabState extends State<_MarkSavedTab> {
  int? _branch;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Saved screens only appear in the tab being used, so the shell's current branch is ours.
    _branch ??= StatefulNavigationShell.maybeOf(context)?.currentIndex;
    if (_branch case final b?) SavedTabs._tabs.add(b);
  }

  @override
  void dispose() {
    if (_branch case final b?) SavedTabs._tabs.remove(b);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
