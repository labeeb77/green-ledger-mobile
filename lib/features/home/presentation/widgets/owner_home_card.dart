import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/home/presentation/bloc/owner_home_cubit.dart';

/// The owner/manager Home (ux-design section 3): today's sales, collected and due, what
/// waits for them, Agents today, then SALE · COLLECT · RATES. Needs an [OwnerHomeCubit].
class OwnerHomeCard extends StatelessWidget {
  const OwnerHomeCard({required this.canSetRates, super.key});

  final bool canSetRates;

  @override
  Widget build(BuildContext context) => BlocBuilder<OwnerHomeCubit, OwnerHomeState>(
    builder: (context, state) => switch (state) {
      OwnerHomeLoading() => const SizedBox(height: 240, child: SkeletonList(rows: 3)),
      OwnerHomeFailed(:final failure) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FailureMessage(failure),
          const SizedBox(height: Space.sm),
          OutlinedButton(onPressed: context.read<OwnerHomeCubit>().load, child: const Text('TRY AGAIN')),
        ],
      ),
      OwnerHomeLoaded(:final home) => _Loaded(home, canSetRates: canSetRates),
    },
  );
}

class _Loaded extends StatelessWidget {
  const _Loaded(this.home, {required this.canSetRates});

  final OwnerHome home;
  final bool canSetRates;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    void push(String path) => unawaited(context.push(path));
    // Three buttons share a row: small side padding, and labels shrink rather than wrap.
    final style = ButtonStyle(
      minimumSize: WidgetStateProperty.all(const Size.fromHeight(Touch.mainButton)),
      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: Space.sm)),
    );
    Widget label(String text) => FittedBox(fit: BoxFit.scaleDown, child: Text(text, maxLines: 1));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(Space.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Today', style: Theme.of(context).textTheme.titleSmall),
                if (home.sales case final sales?) ...[
                  const SizedBox(height: Space.md),
                  _Line(home.bills == 1 ? 'Sales (1 bill)' : 'Sales (${home.bills ?? 0} bills)', AmountText(sales)),
                ],
                if (home.collected case final collected?) ...[
                  const SizedBox(height: Space.md),
                  _Line('Collected', AmountText(collected, tone: collected > 0 ? AmountTone.paid : AmountTone.normal)),
                ],
                if (home.outstanding case final due?) ...[
                  const SizedBox(height: Space.md),
                  _Line('Due from customers', AmountText(due, tone: due > 0 ? AmountTone.due : AmountTone.normal)),
                  if (home.overdue case final overdue? when overdue > 0)
                    Padding(
                      padding: const EdgeInsets.only(top: Space.xs),
                      child: Text('Overdue ${formatMoney(overdue)}', style: TextStyle(fontSize: 14, color: c.due)),
                    ),
                ],
              ],
            ),
          ),
        ),
        const SizedBox(height: Space.md),
        Card(
          margin: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              if (home.approvalsWaiting case final n?)
                _Row(
                  Icons.fact_check_outlined,
                  n == 1 ? '1 approval waiting' : '$n approvals waiting',
                  warn: n > 0,
                  onTap: () => context.go('/approvals'),
                ),
              if (home.handoversWaiting case final n?)
                _Row(
                  Icons.payments_outlined,
                  n == 1 ? '1 cash handover' : '$n cash handovers',
                  warn: n > 0,
                  onTap: () => push('/home/handovers'),
                ),
              _Row(Icons.groups_outlined, 'Agents today', onTap: () => push('/home/agents')),
            ],
          ),
        ),
        const SizedBox(height: Space.lg),
        Row(
          children: [
            Expanded(
              child: FilledButton(
                style: style,
                onPressed: () => context.go('/customers?then=order'),
                child: label('SALE'),
              ),
            ),
            const SizedBox(width: Space.sm),
            Expanded(
              child: FilledButton(
                style: style,
                onPressed: () => context.go('/customers?then=collect'),
                child: label('COLLECT'),
              ),
            ),
            if (canSetRates) ...[
              const SizedBox(width: Space.sm),
              Expanded(
                child: OutlinedButton(style: style, onPressed: () => push('/home/rates'), child: label('RATES')),
              ),
            ],
          ],
        ),
      ],
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

class _Row extends StatelessWidget {
  const _Row(this.icon, this.label, {required this.onTap, this.warn = false});

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool warn;

  @override
  Widget build(BuildContext context) => ListTile(
    leading: Icon(icon, color: warn ? context.colors.due : context.colors.brand),
    title: Text(label, style: TextStyle(fontWeight: warn ? FontWeight.w600 : null)),
    trailing: const Icon(Icons.chevron_right),
    onTap: onTap,
  );
}
