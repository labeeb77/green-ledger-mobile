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
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/shops/presentation/bloc/shops_cubit.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/last_visit_text.dart';

/// What tapping a customer starts when the list is opened as a picker (Home SALE / COLLECT).
enum ShopPick { order, collect }

/// The Shops tab (ux-design section 3): assigned shops grouped by area, with the due
/// amount, an Overdue badge and the last visit. The Customers tab (owner, manager) is the
/// same list of every customer under [basePath] `/customers`; with [pick] it is a picker.
class ShopsPage extends StatelessWidget {
  const ShopsPage({this.title = 'Shops', this.basePath = '/shops', this.pick, this.myUserId, super.key});

  final String title;
  final String basePath;
  final ShopPick? pick;

  /// The signed-in owner or manager on the Customers tab, who may also have shops of their
  /// own: offers "My shops / All".
  final String? myUserId;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = ShopsCubit(context.read<ShopsRepository>(), myUserId: myUserId);
      unawaited(cubit.load());
      return cubit;
    },
    child: _ShopsView(title: title, basePath: basePath, pick: pick),
  );
}

class _ShopsView extends StatelessWidget {
  const _ShopsView({required this.title, required this.basePath, required this.pick});

  final String title;
  final String basePath;
  final ShopPick? pick;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ShopsCubit>();
    return Scaffold(
      appBar: TopBar(title: title),
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
          ShopsLoaded(:final shops) when shops.isEmpty => EmptyState(
            message: basePath == '/shops' ? 'No shops assigned — ask your manager' : 'No customers yet',
            icon: Icons.storefront_outlined,
          ),
          final ShopsLoaded loaded => RefreshIndicator(
            onRefresh: cubit.load,
            child: ListView(
              padding: const EdgeInsets.only(bottom: Space.xl),
              children: [
                if (pick case final pick?) _PickBanner(pick, onClose: () => context.go(basePath)),
                if (loaded.updatedAt case final at?)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(Space.lg, Space.md, Space.lg, 0),
                    child: Text(updatedText(at), style: TextStyle(color: context.colors.muted)),
                  ),
                if (loaded.hasOwnShops)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(Space.lg, Space.md, Space.lg, 0),
                    child: SegmentedButton<bool>(
                      segments: const [
                        ButtonSegment(value: true, label: Text('My shops')),
                        ButtonSegment(value: false, label: Text('All')),
                      ],
                      selected: {loaded.mineOnly},
                      onSelectionChanged: (s) => cubit.showMine(mine: s.first),
                    ),
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
                  for (final shop in group.shops) ShopRow(shop, basePath: basePath, pick: pick),
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

class _PickBanner extends StatelessWidget {
  const _PickBanner(this.pick, {required this.onClose});

  final ShopPick pick;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(Space.lg, Space.md, Space.sm, 0),
    child: Row(
      children: [
        Expanded(
          child: Text(switch (pick) {
            ShopPick.order => 'Pick a customer for the sale',
            ShopPick.collect => 'Pick a customer to collect from',
          }, style: Theme.of(context).textTheme.titleSmall?.copyWith(color: context.colors.brand)),
        ),
        IconButton(tooltip: 'Cancel', icon: const Icon(Icons.close), onPressed: onClose),
      ],
    ),
  );
}

/// One shop: name, last visit, due amount and an Overdue badge. Opens the shop detail,
/// or with [pick] goes straight to Take order / Collect and leaves picker mode after.
class ShopRow extends StatelessWidget {
  const ShopRow(this.shop, {this.basePath = '/shops', this.pick, super.key});

  final Shop shop;
  final String basePath;
  final ShopPick? pick;

  Future<void> _open(BuildContext context) async {
    final pick = this.pick;
    if (pick == null) return unawaited(context.push('$basePath/${shop.id}'));
    final (path, extra) = switch (pick) {
      ShopPick.order => (
        'order',
        OrderTarget(customerId: shop.id, name: shop.name, outstanding: shop.outstanding, creditLimit: shop.creditLimit),
      ),
      ShopPick.collect => ('collect', CollectTarget(customerId: shop.id, name: shop.name, due: shop.outstanding)),
    };
    await context.push<bool>('$basePath/${shop.id}/$path', extra: extra);
    if (context.mounted) context.go(basePath);
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return InkWell(
      onTap: () => unawaited(_open(context)),
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
