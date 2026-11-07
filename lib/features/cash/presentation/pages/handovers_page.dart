import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/paise_field.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:green_ledger_mobile/features/cash/presentation/bloc/handovers_cubit.dart';
import 'package:green_ledger_mobile/features/cash/presentation/pages/cash_page.dart';

/// Owner/manager (ux-design 4.5): each agent's cash waiting to be counted → Counted ₹ →
/// CONFIRM. Only the counted amount moves (D9); a difference shows in red.
class HandoversPage extends StatelessWidget {
  const HandoversPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = HandoversCubit(context.read<CashRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: Scaffold(
      appBar: AppBar(title: const Text('Cash handovers')),
      body: BlocBuilder<HandoversCubit, HandoversState>(
        builder: (context, state) {
          final cubit = context.read<HandoversCubit>();
          if (state.loading && state.pending.isEmpty && state.recent.isEmpty) return const SkeletonList();
          if (state.loadFailure case final f?) {
            return ListView(
              padding: const EdgeInsets.all(Space.lg),
              children: [
                FailureMessage(f),
                const SizedBox(height: Space.md),
                OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
              ],
            );
          }
          return RefreshIndicator(
            onRefresh: cubit.load,
            child: ListView(
              padding: const EdgeInsets.all(Space.lg),
              children: [
                if (state.pending.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: Space.lg),
                    child: Text('No cash waiting to be counted', style: TextStyle(color: context.colors.muted)),
                  ),
                for (final h in state.pending) _CountCard(h, state: state),
                if (state.recent.isNotEmpty) ...[
                  const SizedBox(height: Space.lg),
                  Text('Counted', style: Theme.of(context).textTheme.titleMedium),
                  for (final h in state.recent) HandoverRow(h, showAgent: true),
                ],
              ],
            ),
          );
        },
      ),
    ),
  );
}

class _CountCard extends StatelessWidget {
  const _CountCard(this.handover, {required this.state});

  final Handover handover;
  final HandoversState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HandoversCubit>();
    final c = context.colors;
    final counted = state.countedFor(handover);
    final difference = differenceText(counted - handover.declared, formatMoney);
    return Card(
      margin: const EdgeInsets.only(bottom: Space.md),
      child: Padding(
        padding: const EdgeInsets.all(Space.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${handover.agentName} handing over ${formatMoney(handover.declared)}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(formatDate(handover.date), style: TextStyle(color: c.muted)),
            const SizedBox(height: Space.md),
            PaiseField(
              key: ValueKey(handover.id),
              label: 'Counted',
              value: counted,
              onChanged: (paise) => cubit.setCounted(handover.id, paise),
            ),
            if (difference != null)
              Padding(
                padding: const EdgeInsets.only(top: Space.sm),
                child: Text(
                  difference,
                  style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
                ),
              ),
            if (state.failures[handover.id] case final f?) ...[const SizedBox(height: Space.sm), FailureMessage(f)],
            const SizedBox(height: Space.md),
            MainButton(
              label: 'CONFIRM ${formatMoney(counted)}',
              loading: state.confirming.contains(handover.id),
              onPressed: () => unawaited(cubit.confirm(handover)),
            ),
          ],
        ),
      ),
    );
  }
}
