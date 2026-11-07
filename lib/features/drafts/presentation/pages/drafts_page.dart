import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/drafts/drafts_cubit.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';

/// Entries kept on the phone after a save failed for lack of network (ux-design
/// section 7). SEND AGAIN resends each with its own key, so it never posts twice.
class DraftsPage extends StatelessWidget {
  const DraftsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocListener<DraftsCubit, DraftsState>(
    listenWhen: (before, now) => now.lastSaved != null && now.lastSaved != before.lastSaved,
    listener: (context, state) => ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(state.lastSaved!))),
    child: Scaffold(
      appBar: AppBar(title: const Text('Not sent')),
      body: BlocBuilder<DraftsCubit, DraftsState>(
        builder: (context, state) => state.drafts.isEmpty
            ? const EmptyState(message: 'Everything is sent', icon: Icons.check_circle_outline)
            : ListView(
                padding: const EdgeInsets.all(Space.lg),
                children: [
                  for (final draft in state.drafts) _DraftCard(draft, sending: state.sending.contains(draft.id)),
                ],
              ),
      ),
    ),
  );
}

class _DraftCard extends StatelessWidget {
  const _DraftCard(this.draft, {required this.sending});

  final Draft draft;
  final bool sending;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DraftsCubit>();
    final c = context.colors;
    return Card(
      margin: const EdgeInsets.only(bottom: Space.md),
      child: Padding(
        padding: const EdgeInsets.all(Space.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(draft.title, style: Theme.of(context).textTheme.titleMedium),
            Text(draft.subtitle),
            Text(
              updatedText(draft.createdAt).replaceFirst('Updated', 'Kept'),
              style: TextStyle(fontSize: 14, color: c.muted),
            ),
            if (draft.lastError case final error?) ...[
              const SizedBox(height: Space.sm),
              Text(
                error,
                style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
              ),
            ],
            const SizedBox(height: Space.md),
            MainButton(label: 'SEND AGAIN', loading: sending, onPressed: () => unawaited(cubit.send(draft))),
            TextButton(
              onPressed: sending
                  ? null
                  : () async {
                      final delete = await showDialog<bool>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Delete this entry?'),
                          content: const Text(
                            'It is removed from the phone and not sent. If the connection dropped while '
                            'saving, it may already be saved: check the shop first.',
                          ),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Keep')),
                            TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Delete')),
                          ],
                        ),
                      );
                      if (delete ?? false) await cubit.delete(draft);
                    },
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
