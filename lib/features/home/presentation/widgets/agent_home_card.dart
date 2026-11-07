import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/core/widgets/status_chip.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/home/presentation/bloc/agent_home_cubit.dart';

/// The agent's Home (ux-design section 3): due on my shops, collected today by method,
/// cash to hand over, then the shops due today. Needs an [AgentHomeCubit] above it.
class AgentHomeCard extends StatelessWidget {
  const AgentHomeCard({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AgentHomeCubit, AgentHomeState>(
    builder: (context, state) => switch (state) {
      AgentHomeLoading() => const SizedBox(height: 240, child: SkeletonList(rows: 3)),
      AgentHomeFailed(:final failure) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FailureMessage(failure),
          const SizedBox(height: Space.sm),
          OutlinedButton(onPressed: context.read<AgentHomeCubit>().load, child: const Text('TRY AGAIN')),
        ],
      ),
      AgentHomeLoaded(:final home) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _Figures(home),
          const SizedBox(height: Space.xl),
          Text('Due today (${home.dueToday.length})', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: Space.xs),
          if (home.dueToday.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Space.md),
              child: Text('Nothing due today 🎉', style: TextStyle(color: context.colors.muted)),
            ),
          for (final shop in home.dueToday) _DueRow(shop),
        ],
      ),
    },
  );
}

class _Figures extends StatelessWidget {
  const _Figures(this.home);

  final AgentHome home;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final collected = home.collectedToday;
    final methods = [
      if (collected.cash > 0) 'Cash ${formatMoney(collected.cash)}',
      if (collected.upi > 0) 'UPI ${formatMoney(collected.upi)}',
      if (collected.bankTransfer > 0) 'Bank ${formatMoney(collected.bankTransfer)}',
      if (collected.cheque > 0) 'Cheque ${formatMoney(collected.cheque)}',
    ];
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(Space.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Line(
              'Due on my shops',
              AmountText(home.dueOnMyShops, tone: home.dueOnMyShops > 0 ? AmountTone.due : AmountTone.normal),
            ),
            const SizedBox(height: Space.md),
            _Line(
              'Collected today',
              AmountText(collected.total, tone: collected.total > 0 ? AmountTone.paid : AmountTone.normal),
            ),
            if (methods.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: Space.xs),
                child: Text(methods.join(' · '), style: TextStyle(fontSize: 14, color: c.muted)),
              ),
            const SizedBox(height: Space.md),
            _Line('Cash to hand over', AmountText(home.cashToHandOver)),
            if (home.handoverPending)
              const Padding(
                padding: EdgeInsets.only(top: Space.xs),
                child: StatusChip(EntryStatus.waiting, label: 'Handover waiting for manager'),
              ),
          ],
        ),
      ),
    );
  }
}

class _Line extends StatelessWidget {
  const _Line(this.label, this.amount);

  final String label;
  final Widget amount;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(child: Text(label)),
      amount,
    ],
  );
}

class _DueRow extends StatelessWidget {
  const _DueRow(this.shop);

  final DueShop shop;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => unawaited(context.push('/shops/${shop.customerId}')),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: Space.md),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(shop.name, style: Theme.of(context).textTheme.titleMedium),
                if (shop.area case final area?) Text(area, style: TextStyle(fontSize: 14, color: context.colors.muted)),
              ],
            ),
          ),
          const SizedBox(width: Space.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // A promise with nothing due yet still shows what the shop owes.
              AmountText(shop.due > 0 ? shop.due : shop.outstanding, tone: AmountTone.due),
              if (shop.promisedToday)
                const Padding(
                  padding: EdgeInsets.only(top: Space.xs),
                  child: StatusChip(EntryStatus.waiting, label: 'Promised today'),
                )
              else if (shop.overdue > 0)
                const Padding(
                  padding: EdgeInsets.only(top: Space.xs),
                  child: StatusChip(EntryStatus.due, label: 'Overdue'),
                ),
            ],
          ),
        ],
      ),
    ),
  );
}
