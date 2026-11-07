import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/core/widgets/status_chip.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:green_ledger_mobile/features/cash/presentation/bloc/agent_cash_cubit.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';

/// The agent's Cash tab (ux-design 4.5): cash in the bag, today's cash receipts and
/// HAND OVER (always the full bag), then how the manager's counts came out.
class CashPage extends StatelessWidget {
  const CashPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final auth = context.read<AuthBloc>().state;
      final cubit = AgentCashCubit(context.read<CashRepository>(), auth is AuthSignedIn ? auth.session.user.id : '');
      unawaited(cubit.load());
      return cubit;
    },
    child: const _CashView(),
  );
}

class _CashView extends StatelessWidget {
  const _CashView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AgentCashCubit>();
    return Scaffold(
      appBar: const TopBar(title: 'Cash'),
      body: BlocBuilder<AgentCashCubit, AgentCashState>(
        builder: (context, state) {
          final bag = state.bag;
          if (bag == null) {
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
            return const SkeletonList();
          }
          final c = context.colors;
          final canHandOver = bag.balance > 0 && bag.pending == null;
          return Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: cubit.load,
                  child: ListView(
                    padding: const EdgeInsets.all(Space.lg),
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: const EdgeInsets.all(Space.lg),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Cash in bag'),
                              const SizedBox(height: Space.xs),
                              AmountText(bag.balance, large: true),
                              Text(
                                bag.receipts.length == 1 ? '1 receipt today' : '${bag.receipts.length} receipts today',
                                style: TextStyle(color: c.muted),
                              ),
                              if (bag.pending case final p?) ...[
                                const SizedBox(height: Space.md),
                                Row(
                                  children: [
                                    const StatusChip(EntryStatus.waiting, label: 'Sent'),
                                    const SizedBox(width: Space.sm),
                                    Expanded(child: Text('${formatMoney(p.declared)} · waiting for the manager')),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                      if (bag.receipts.isNotEmpty) ...[
                        const SizedBox(height: Space.xl),
                        Text('Cash today', style: Theme.of(context).textTheme.titleMedium),
                        for (final r in bag.receipts)
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(r.shop),
                            subtitle: Text(r.number),
                            trailing: AmountText(r.amount),
                          ),
                      ],
                      if (state.recent.isNotEmpty) ...[
                        const SizedBox(height: Space.xl),
                        Text('Handed over', style: Theme.of(context).textTheme.titleMedium),
                        for (final h in state.recent) HandoverRow(h),
                      ],
                      if (state.failure case final f?) ...[const SizedBox(height: Space.lg), FailureMessage(f)],
                    ],
                  ),
                ),
              ),
              if (canHandOver)
                BottomActionBar(
                  child: MainButton(
                    label: 'HAND OVER ${formatMoney(bag.balance)}',
                    loading: state.busy,
                    onPressed: () => unawaited(cubit.handOver()),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

/// A counted handover: date, what was handed over and counted, and any difference in red.
class HandoverRow extends StatelessWidget {
  const HandoverRow(this.handover, {this.showAgent = false, super.key});

  final Handover handover;
  final bool showAgent;

  @override
  Widget build(BuildContext context) {
    final h = handover;
    final difference = differenceText(h.difference, formatMoney);
    final title = showAgent ? '${h.agentName} · ${formatDate(h.date)}' : formatDate(h.date);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title),
      subtitle: Text(
        h.counted == null || h.counted == h.declared
            ? formatMoney(h.declared)
            : '${formatMoney(h.declared)} handed over · ${formatMoney(h.counted!)} counted',
      ),
      trailing: switch (h.status) {
        HandoverStatus.pending => const StatusChip(EntryStatus.waiting),
        HandoverStatus.confirmed => const StatusChip(EntryStatus.paid, label: 'Confirmed'),
        HandoverStatus.mismatch => StatusChip(EntryStatus.rejected, label: difference ?? 'Mismatch'),
      },
    );
  }
}
