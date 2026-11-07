import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/chip_group.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/approvals/domain/approval.dart';
import 'package:green_ledger_mobile/features/approvals/presentation/bloc/approvals_cubit.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';

/// The Approvals tab (ux-design 4.6): one card per entry with the reason and numbers,
/// REJECT (a note is required) and APPROVE.
class ApprovalsPage extends StatelessWidget {
  const ApprovalsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = ApprovalsCubit(context.read<ApprovalsRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: BlocConsumer<ApprovalsCubit, ApprovalsState>(
      listenWhen: (before, now) => now.lastDecision != null && now.items.length < before.items.length,
      listener: (context, state) => ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(state.lastDecision!))),
      builder: (context, state) {
        final cubit = context.read<ApprovalsCubit>();
        return Scaffold(
          appBar: const TopBar(title: 'Approvals'),
          body: switch (state) {
            ApprovalsState(loading: true, items: []) => const SkeletonList(),
            ApprovalsState(loadFailure: final f?) => ListView(
              padding: const EdgeInsets.all(Space.lg),
              children: [
                FailureMessage(f),
                const SizedBox(height: Space.md),
                OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
              ],
            ),
            ApprovalsState(items: []) => RefreshIndicator(
              onRefresh: cubit.load,
              child: ListView(
                children: const [
                  SizedBox(height: 120),
                  EmptyState(message: 'Nothing waiting for you 🎉', icon: Icons.fact_check_outlined),
                ],
              ),
            ),
            _ => RefreshIndicator(
              onRefresh: cubit.load,
              child: ListView(
                padding: const EdgeInsets.all(Space.lg),
                children: [for (final a in state.items) _ApprovalCard(a, state: state)],
              ),
            ),
          },
        );
      },
    ),
  );
}

class _ApprovalCard extends StatelessWidget {
  const _ApprovalCard(this.approval, {required this.state});

  final Approval approval;
  final ApprovalsState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ApprovalsCubit>();
    final c = context.colors;
    final busy = state.deciding.contains(approval.id);
    return Card(
      margin: const EdgeInsets.only(bottom: Space.md),
      child: Padding(
        padding: const EdgeInsets.all(Space.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.warning_amber_rounded, color: c.pending),
                const SizedBox(width: Space.sm),
                Expanded(child: Text(approval.title, style: Theme.of(context).textTheme.titleMedium)),
                if (approval.amount case final amount?) AmountText(amount),
              ],
            ),
            for (final line in approval.details)
              Padding(
                padding: const EdgeInsets.only(top: Space.xs),
                child: Text(line),
              ),
            Padding(
              padding: const EdgeInsets.only(top: Space.xs),
              child: Text(formatTime(approval.createdAt), style: TextStyle(fontSize: 14, color: c.muted)),
            ),
            if (state.failures[approval.id] case final f?) ...[const SizedBox(height: Space.sm), FailureMessage(f)],
            const SizedBox(height: Space.md),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(Touch.mainButton)),
                    onPressed: busy
                        ? null
                        : () async {
                            final note = await showModalBottomSheet<String>(
                              context: context,
                              isScrollControlled: true,
                              builder: (_) => const _RejectSheet(),
                            );
                            if (note != null) await cubit.reject(approval, note);
                          },
                    child: const Text('REJECT'),
                  ),
                ),
                const SizedBox(width: Space.sm),
                Expanded(
                  child: MainButton(
                    label: 'APPROVE',
                    loading: busy,
                    onPressed: () => unawaited(cubit.approve(approval)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Why it's rejected: a chip or free text (required); pops with the note.
class _RejectSheet extends StatefulWidget {
  const _RejectSheet();

  @override
  State<_RejectSheet> createState() => _RejectSheetState();
}

class _RejectSheetState extends State<_RejectSheet> {
  final _note = TextEditingController();

  @override
  void dispose() {
    _note.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.fromLTRB(Space.lg, Space.lg, Space.lg, Space.lg + MediaQuery.viewInsetsOf(context).bottom),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Why reject?', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: Space.sm),
        ChipGroup<String>(
          options: rejectNotes,
          labelOf: (n) => n,
          selected: rejectNotes.contains(_note.text) ? _note.text : null,
          onSelected: (n) => setState(() => _note.text = n),
        ),
        const SizedBox(height: Space.md),
        TextField(
          controller: _note,
          decoration: const InputDecoration(labelText: 'Note for the requester'),
          textCapitalization: TextCapitalization.sentences,
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: Space.lg),
        MainButton(
          label: 'REJECT',
          onPressed: _note.text.trim().isEmpty ? null : () => Navigator.pop(context, _note.text.trim()),
        ),
      ],
    ),
  );
}
