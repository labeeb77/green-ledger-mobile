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
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/shops/presentation/bloc/shops_cubit.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/last_visit_text.dart';

/// The Shops tab (ux-design section 3): assigned shops grouped by area, with the due
/// amount, an Overdue badge and the last visit.
class ShopsPage extends StatelessWidget {
  const ShopsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = ShopsCubit(context.read<ShopsRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: const _ShopsView(),
  );
}

class _ShopsView extends StatelessWidget {
  const _ShopsView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ShopsCubit>();
    return Scaffold(
      appBar: const TopBar(title: 'Shops'),
      body: BlocBuilder<ShopsCubit, ShopsState>(
        builder: (context, state) => switch (state) {
          ShopsLoading() => const SkeletonList(),
          ShopsFailed(:final failure) => ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              FailureMessage(failure),
              const SizedBox(height: Space.md),
              OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
            ],
          ),
          ShopsLoaded(:final shops) when shops.isEmpty => const EmptyState(
            message: 'No shops assigned — ask your manager',
            icon: Icons.storefront_outlined,
          ),
          final ShopsLoaded loaded => RefreshIndicator(
            onRefresh: cubit.load,
            child: ListView(
              padding: const EdgeInsets.only(bottom: Space.xl),
              children: [
                if (loaded.updatedAt case final at?)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(Space.lg, Space.md, Space.lg, 0),
                    child: Text(updatedText(at), style: TextStyle(color: context.colors.muted)),
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(Space.lg, Space.md, Space.lg, Space.sm),
                  child: TextField(
                    decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search shops'),
                    textInputAction: TextInputAction.search,
                    onChanged: cubit.search,
                  ),
                ),
                if (loaded.groups.isEmpty)
                  const Padding(padding: EdgeInsets.all(Space.lg), child: Text('No shop matches the search.')),
                for (final group in loaded.groups) ...[
                  _AreaHeader(group.area ?? 'No area', group.shops.length),
                  for (final shop in group.shops) ShopRow(shop),
                ],
              ],
            ),
          ),
        },
      ),
    );
  }
}

class _AreaHeader extends StatelessWidget {
  const _AreaHeader(this.area, this.count);

  final String area;
  final int count;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(Space.lg, Space.lg, Space.lg, Space.xs),
    child: Text('$area ($count)', style: Theme.of(context).textTheme.titleSmall?.copyWith(color: context.colors.muted)),
  );
}

/// One shop: name, last visit, due amount and an Overdue badge. Opens the shop detail.
class ShopRow extends StatelessWidget {
  const ShopRow(this.shop, {super.key});

  final Shop shop;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return InkWell(
      onTap: () => unawaited(context.push('/shops/${shop.id}')),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Space.lg, vertical: Space.md),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(shop.name, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 2),
                  Text(lastVisitText(shop.lastVisit), style: TextStyle(fontSize: 14, color: c.muted)),
                ],
              ),
            ),
            const SizedBox(width: Space.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AmountText(shop.outstanding, tone: shop.outstanding > 0 ? AmountTone.due : AmountTone.normal),
                if (shop.overdue > 0) ...[
                  const SizedBox(height: Space.xs),
                  const StatusChip(EntryStatus.due, label: 'Overdue'),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
