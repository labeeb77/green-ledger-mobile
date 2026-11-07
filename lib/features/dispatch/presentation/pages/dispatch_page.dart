import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';
import 'package:green_ledger_mobile/features/dispatch/presentation/bloc/dispatch_cubits.dart';

/// Dispatch (ux-design 4.4): "Orders" grouped by agent and the "Load list" totals.
/// No amounts.
class DispatchPage extends StatelessWidget {
  const DispatchPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = DispatchListCubit(context.read<DispatchRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dispatch'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Orders'),
              Tab(text: 'Load list'),
            ],
          ),
        ),
        body: BlocBuilder<DispatchListCubit, DispatchListState>(
          builder: (context, state) {
            final cubit = context.read<DispatchListCubit>();
            if (state.loading && state.orders.isEmpty) return const SkeletonList();
            if (state.failure case final f? when state.orders.isEmpty) {
              return ListView(
                padding: const EdgeInsets.all(Space.lg),
                children: [
                  FailureMessage(f),
                  const SizedBox(height: Space.md),
                  OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
                ],
              );
            }
            if (state.orders.isEmpty) {
              return const EmptyState(message: 'No orders to dispatch 🎉', icon: Icons.local_shipping_outlined);
            }
            return TabBarView(
              children: [
                RefreshIndicator(
                  onRefresh: cubit.load,
                  child: ListView(
                    padding: const EdgeInsets.only(bottom: Space.xl),
                    children: [
                      for (final MapEntry(key: agent, value: orders) in byAgent(state.orders).entries) ...[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(Space.lg, Space.lg, Space.lg, Space.xs),
                          child: Text(
                            '$agent (${orders.length})',
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: context.colors.muted),
                          ),
                        ),
                        for (final o in orders)
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: Space.lg),
                            title: Text(o.shop),
                            subtitle: Text(
                              '${o.number} · ${formatDate(o.date)} · '
                              '${o.lines.length == 1 ? '1 line' : '${o.lines.length} lines'}',
                            ),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () async {
                              final sent = await context.push<bool>('/home/dispatch/order', extra: o);
                              if (sent ?? false) await cubit.load();
                            },
                          ),
                      ],
                    ],
                  ),
                ),
                ListView(
                  padding: const EdgeInsets.all(Space.lg),
                  children: [
                    for (final row in loadList(state.orders))
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: Space.sm),
                        child: Text(row, style: Theme.of(context).textTheme.titleMedium),
                      ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    ),
  );
}
