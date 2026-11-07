import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/home/presentation/bloc/godown_home_cubit.dart';

/// The godown's Home (ux-design section 3): to dispatch, arrivals today, low stock,
/// wastage today, then RECEIVE · DISPATCH · WASTAGE · RETURNS. No prices. Needs a
/// [GodownHomeCubit] above it.
class GodownHomeCard extends StatelessWidget {
  const GodownHomeCard({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<GodownHomeCubit, GodownHomeState>(
    builder: (context, state) => switch (state) {
      GodownHomeLoading() => const SizedBox(height: 240, child: SkeletonList(rows: 3)),
      GodownHomeFailed(:final failure) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FailureMessage(failure),
          const SizedBox(height: Space.sm),
          OutlinedButton(onPressed: context.read<GodownHomeCubit>().load, child: const Text('TRY AGAIN')),
        ],
      ),
      GodownHomeLoaded(:final home) => _Loaded(home),
    },
  );
}

class _Loaded extends StatelessWidget {
  const _Loaded(this.home);

  final GodownHome home;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final wastage = home.wastageToday.entries.map((e) => formatQuantity(e.value, e.key)).join(' · ');
    void go(String path) => unawaited(context.push(path));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          margin: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              _Figure(
                'To dispatch',
                home.toDispatch == 1 ? '1 order' : '${home.toDispatch} orders',
                onTap: () => go('/home/dispatch'),
              ),
              _Figure('Arrivals today', '${home.arrivalsToday}'),
              _Figure(
                'Low stock',
                home.lowStock.length == 1 ? '1 item' : '${home.lowStock.length} items',
                warn: home.lowStock.isNotEmpty,
                onTap: () => context.go('/stock'),
              ),
              _Figure(
                'Wastage today',
                [
                  if (wastage.isEmpty) 'None' else wastage,
                  if (home.wastagePending > 0) '${home.wastagePending} waiting',
                ].join(' · '),
              ),
              if (home.returnsToInspect case final n? when n > 0)
                _Figure('Returns to inspect', '$n', warn: true, onTap: () => go('/home/returns')),
            ],
          ),
        ),
        const SizedBox(height: Space.lg),
        Row(
          children: [
            Expanded(child: _Action('RECEIVE', () => go('/home/receive'), main: true)),
            const SizedBox(width: Space.sm),
            Expanded(child: _Action('DISPATCH', () => go('/home/dispatch'), main: true)),
          ],
        ),
        const SizedBox(height: Space.sm),
        Row(
          children: [
            Expanded(child: _Action('WASTAGE', () => go('/home/wastage'))),
            const SizedBox(width: Space.sm),
            Expanded(child: _Action('RETURNS', () => go('/home/returns'))),
          ],
        ),
        if (home.lowStock.isNotEmpty) ...[
          const SizedBox(height: Space.xl),
          Text('Low stock', style: Theme.of(context).textTheme.titleMedium),
          for (final l in home.lowStock)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l.name),
              subtitle: Text('Level ${formatQuantity(l.level, l.unit)}', style: TextStyle(color: c.muted)),
              trailing: Text(
                formatQuantity(l.quantity, l.unit),
                style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
              ),
            ),
        ],
      ],
    );
  }
}

class _Figure extends StatelessWidget {
  const _Figure(this.label, this.value, {this.onTap, this.warn = false});

  final String label;
  final String value;
  final VoidCallback? onTap;
  final bool warn;

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text(label),
    onTap: onTap,
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.w600, color: warn ? context.colors.due : null),
        ),
        if (onTap != null) const Icon(Icons.chevron_right),
      ],
    ),
  );
}

class _Action extends StatelessWidget {
  const _Action(this.label, this.onPressed, {this.main = false});

  final String label;
  final VoidCallback onPressed;
  final bool main;

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(minimumSize: WidgetStateProperty.all(const Size.fromHeight(Touch.mainButton)));
    return main
        ? FilledButton(style: style, onPressed: onPressed, child: Text(label))
        : OutlinedButton(style: style, onPressed: onPressed, child: Text(label));
  }
}
