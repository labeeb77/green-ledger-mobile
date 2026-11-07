import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/core/widgets/status_chip.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';
import 'package:green_ledger_mobile/features/stock/domain/stock.dart';
import 'package:green_ledger_mobile/features/stock/presentation/bloc/stock_cubit.dart';

/// The Stock tab (ux-design 4.7): "340 kg (7 Bag)" by product, no cost.
class StockPage extends StatelessWidget {
  const StockPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = StockCubit(context.read<StockRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: Scaffold(
      appBar: const TopBar(title: 'Stock'),
      body: BlocBuilder<StockCubit, StockState>(
        builder: (context, state) {
          final cubit = context.read<StockCubit>();
          if (state.loading && state.items.isEmpty) return const SkeletonList();
          if (state.failure case final f? when state.items.isEmpty) {
            return ListView(
              padding: const EdgeInsets.all(Space.lg),
              children: [
                FailureMessage(f),
                const SizedBox(height: Space.md),
                OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
              ],
            );
          }
          final c = context.colors;
          final lowCount = state.items.where((i) => i.lowStock).length;
          return RefreshIndicator(
            onRefresh: cubit.load,
            child: ListView(
              padding: const EdgeInsets.only(bottom: Space.xl),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(Space.lg, Space.md, Space.lg, Space.sm),
                  child: TextField(
                    decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search products'),
                    onChanged: cubit.search,
                  ),
                ),
                if (lowCount > 0)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Space.lg),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FilterChip(
                        label: Text('Low stock ($lowCount)'),
                        selected: state.lowOnly,
                        onSelected: (_) => cubit.toggleLowOnly(),
                      ),
                    ),
                  ),
                if (state.shown.isEmpty)
                  const Padding(padding: EdgeInsets.all(Space.lg), child: Text('No product matches.')),
                for (final item in state.shown)
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: Space.lg),
                    title: Text(item.name),
                    subtitle: item.wastageToday != '0.000'
                        ? Text(
                            'Wastage today ${formatQuantity(item.wastageToday, item.unit)}',
                            style: TextStyle(color: c.muted),
                          )
                        : null,
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          item.onHand,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: item.negative || item.lowStock ? c.due : null,
                          ),
                        ),
                        if (item.lowStock) const StatusChip(EntryStatus.due, label: 'Low'),
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
