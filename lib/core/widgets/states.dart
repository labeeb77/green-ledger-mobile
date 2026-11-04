import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';

/// One friendly line plus the main action (ux-design section 7).
class EmptyState extends StatelessWidget {
  const EmptyState({required this.message, this.icon = Icons.inbox_outlined, this.action, super.key});

  final String message;
  final IconData icon;
  final Widget? action;

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(Space.xl),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 48, color: context.colors.muted),
          const SizedBox(height: Space.md),
          Text(message, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),
          if (action != null) ...[const SizedBox(height: Space.lg), action!],
        ],
      ),
    ),
  );
}

/// An error in plain words, with the server code in small text for support.
class FailureMessage extends StatelessWidget {
  const FailureMessage(this.failure, {super.key});

  final AppFailure failure;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Space.md),
      decoration: BoxDecoration(color: c.dueBackground, borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.error_outline, color: c.due),
          const SizedBox(width: Space.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  failure.message,
                  style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
                ),
                if (failure.supportLine case final line?)
                  Padding(
                    padding: const EdgeInsets.only(top: Space.xs),
                    child: Text(line, style: Theme.of(context).textTheme.labelSmall),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Skeleton rows while a list loads (spinners only for actions under a second). Static
/// when the phone asks for reduced motion.
class SkeletonList extends StatefulWidget {
  const SkeletonList({this.rows = 6, super.key});

  final int rows;

  @override
  State<SkeletonList> createState() => _SkeletonListState();
}

class _SkeletonListState extends State<SkeletonList> with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 900));

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _controller.stop();
    } else {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return FadeTransition(
      opacity: Tween<double>(begin: 0.5, end: 1).animate(_controller),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(Space.lg),
        itemCount: widget.rows,
        separatorBuilder: (_, _) => const SizedBox(height: Space.md),
        itemBuilder: (_, _) => Container(
          height: 64,
          decoration: BoxDecoration(color: c.border, borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}

/// A thin bar at the top of the screen, e.g. "No internet" or the read-only notice.
class TopBanner extends StatelessWidget {
  const TopBanner({required this.message, required this.icon, this.warning = false, super.key});

  final String message;
  final IconData icon;
  final bool warning;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final fg = warning ? c.pending : c.text;
    return Material(
      color: warning ? c.pendingBackground : c.border,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.lg, vertical: Space.sm),
          child: Row(
            children: [
              Icon(icon, size: 18, color: fg),
              const SizedBox(width: Space.sm),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(fontSize: 14, color: fg, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
