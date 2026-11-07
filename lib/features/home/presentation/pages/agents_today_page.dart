import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/core/widgets/status_chip.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/home/presentation/bloc/agents_today_cubit.dart';

/// Agents today (ux-design 4.7, owner/manager): one row per agent with collected,
/// visits and the cash still in their bag.
class AgentsTodayPage extends StatelessWidget {
  const AgentsTodayPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = AgentsTodayCubit(context.read<HomeRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: Scaffold(
      appBar: AppBar(title: const Text('Agents today')),
      body: BlocBuilder<AgentsTodayCubit, AgentsTodayState>(
        builder: (context, state) => switch (state) {
          AgentsTodayLoading() => const SkeletonList(rows: 4),
          AgentsTodayFailed(:final failure) => Padding(
            padding: const EdgeInsets.all(Space.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FailureMessage(failure),
                const SizedBox(height: Space.sm),
                OutlinedButton(onPressed: context.read<AgentsTodayCubit>().load, child: const Text('TRY AGAIN')),
              ],
            ),
          ),
          AgentsTodayLoaded(:final agents) => RefreshIndicator(
            onRefresh: context.read<AgentsTodayCubit>().load,
            child: agents.isEmpty
                ? ListView(
                    children: const [EmptyState(icon: Icons.groups_outlined, message: 'No agents yet')],
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(Space.lg),
                    itemCount: agents.length,
                    separatorBuilder: (_, _) => const Divider(height: Space.xl),
                    itemBuilder: (_, i) => _AgentRow(agents[i]),
                  ),
          ),
        },
      ),
    ),
  );
}

class _AgentRow extends StatelessWidget {
  const _AgentRow(this.agent);

  final AgentDay agent;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final methods = [
      if (agent.cash > 0) 'Cash ${formatMoney(agent.cash)}',
      if (agent.upi > 0) 'UPI ${formatMoney(agent.upi)}',
      if (agent.bankTransfer > 0) 'Bank ${formatMoney(agent.bankTransfer)}',
      if (agent.cheque > 0) 'Cheque ${formatMoney(agent.cheque)}',
    ];
    final muted = TextStyle(fontSize: 14, color: c.muted);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(agent.name, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: Space.sm),
        Row(
          children: [
            const Expanded(child: Text('Collected')),
            AmountText(agent.collected, tone: agent.collected > 0 ? AmountTone.paid : AmountTone.normal),
          ],
        ),
        if (methods.isNotEmpty) Text(methods.join(' · '), style: muted),
        const SizedBox(height: Space.xs),
        Row(
          children: [
            const Expanded(child: Text('Cash in bag')),
            AmountText(agent.cashInBag),
          ],
        ),
        const SizedBox(height: Space.xs),
        Text(agent.visits == 1 ? '1 visit' : '${agent.visits} visits', style: muted),
        if (agent.handoverPending)
          const Padding(
            padding: EdgeInsets.only(top: Space.xs),
            child: StatusChip(EntryStatus.waiting, label: 'Handover waiting to be counted'),
          ),
      ],
    );
  }
}
