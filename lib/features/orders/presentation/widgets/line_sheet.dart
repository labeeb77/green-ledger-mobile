import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/chip_group.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/number_field.dart';
import 'package:green_ledger_mobile/core/widgets/paise_field.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/orders/presentation/bloc/order_cubit.dart';
import 'package:green_ledger_mobile/features/orders/presentation/pages/order_page.dart';

/// The line sheet (ux-design 4.2): the quoted rate (text for agents), unit chips,
/// quantity with the estimated stock units, ADD.
class LineSheet extends StatelessWidget {
  const LineSheet({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<OrderCubit, OrderState>(
    builder: (context, state) {
      final e = state.editor;
      if (e == null) return const SizedBox.shrink();
      final cubit = context.read<OrderCubit>();
      final c = context.colors;
      final quote = e.quote;
      final line = e.line;
      final ratePer = quote?.ratePer ?? RatePer.stockUnit;
      final per = ratePer == RatePer.pack ? e.unit.name : e.product.stockUnit;
      final belowMinimum = quote?.minimumRate != null && (e.rate ?? 0) < quote!.minimumRate!;
      return Padding(
        padding: EdgeInsets.fromLTRB(Space.lg, Space.lg, Space.lg, Space.lg + MediaQuery.viewInsetsOf(context).bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              e.quoting || e.rate == null
                  ? e.product.name
                  : '${e.product.name} · ${rateText(e.rate!, ratePer, null, stockUnit: e.product.stockUnit, packName: e.unit.name)}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            if (e.quoting)
              const Padding(
                padding: EdgeInsets.only(top: Space.sm),
                child: LinearProgressIndicator(),
              ),
            if (cubit.canEditRate && !e.quoting && e.rate != null) ...[
              const SizedBox(height: Space.sm),
              PaiseField(
                key: ValueKey('rate-${e.unit.packUnitId}'),
                label: 'Rate per $per',
                value: e.rate!,
                onChanged: cubit.setRate,
              ),
            ],
            if (belowMinimum)
              Padding(
                padding: const EdgeInsets.only(top: Space.xs),
                child: Text(
                  'Below the minimum ${formatMoney(quote.minimumRate!)}/$per',
                  style: TextStyle(color: c.pending, fontWeight: FontWeight.w600),
                ),
              ),
            if (e.product.units.length > 1) ...[
              const SizedBox(height: Space.md),
              const Text('Unit'),
              const SizedBox(height: Space.xs),
              ChipGroup<OrderUnit>(
                options: e.product.units,
                labelOf: (u) => u.name,
                selected: e.unit,
                onSelected: cubit.setUnit,
              ),
            ],
            const SizedBox(height: Space.md),
            NumberField(
              key: ValueKey('qty-${e.unit.packUnitId}'),
              value: e.qty,
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'Qty (${e.unit.name})',
                helperText: e.unit.fixed && e.quantity != null
                    ? '= ${formatQuantity(e.quantity!, e.product.stockUnit)}'
                    : null,
              ),
              onChanged: cubit.setQty,
            ),
            if (e.unit.variable) ...[
              const SizedBox(height: Space.sm),
              NumberField(
                key: ValueKey('est-${e.unit.packUnitId}'),
                value: e.estimate,
                decoration: InputDecoration(
                  labelText: '≈ ${e.product.stockUnit} (estimate)',
                  helperText: 'Weighed at dispatch',
                ),
                onChanged: cubit.setEstimate,
              ),
            ],
            if (!e.quoting && e.problem != null && (e.qty.isNotEmpty || e.rate == null))
              Padding(
                padding: const EdgeInsets.only(top: Space.sm),
                child: Text(
                  e.problem!,
                  style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
                ),
              ),
            if (line != null)
              Padding(
                padding: const EdgeInsets.only(top: Space.sm),
                child: Text('≈ ${formatMoney(line.amount)}', style: Theme.of(context).textTheme.titleMedium),
              ),
            const SizedBox(height: Space.lg),
            MainButton(
              label: e.index == null ? 'ADD' : 'UPDATE',
              onPressed: line == null
                  ? null
                  : () {
                      cubit.addLine();
                      Navigator.pop(context);
                    },
            ),
          ],
        ),
      );
    },
  );
}
