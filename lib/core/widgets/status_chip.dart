import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';

/// Status as icon + word + colour, never colour alone (ux-design principle 5).
enum EntryStatus { paid, due, waiting, rejected, cancelled }

class StatusChip extends StatelessWidget {
  const StatusChip(this.status, {this.label, super.key});

  final EntryStatus status;

  /// Overrides the default word (e.g. "Overdue" for a due entry).
  final String? label;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final (icon, word, fg, bg) = switch (status) {
      EntryStatus.paid => (Icons.check_circle, 'Paid', c.paid, c.paidBackground),
      EntryStatus.due => (Icons.error_outline, 'Due', c.due, c.dueBackground),
      EntryStatus.waiting => (Icons.hourglass_top, 'Waiting', c.pending, c.pendingBackground),
      EntryStatus.rejected => (Icons.cancel, 'Rejected', c.due, c.dueBackground),
      EntryStatus.cancelled => (Icons.remove, 'Cancelled', c.cancelled, Colors.transparent),
    };
    return Semantics(
      label: label ?? word,
      excludeSemantics: true,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(999),
          border: status == EntryStatus.cancelled ? Border.all(color: c.border) : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: fg),
            const SizedBox(width: 4),
            Text(
              label ?? word,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: fg),
            ),
          ],
        ),
      ),
    );
  }
}
