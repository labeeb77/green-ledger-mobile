import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/chip_group.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/number_field.dart';
import 'package:green_ledger_mobile/features/receive/domain/receive.dart';
import 'package:green_ledger_mobile/features/receive/presentation/bloc/receive_cubit.dart';

/// One item (ux-design 4.3): product, pack chips, Packs, Net (main field; fixed packs
/// fill it), Gross / tare folded away, grade chips. No rate.
class ItemSheet extends StatefulWidget {
  const ItemSheet({super.key});

  @override
  State<ItemSheet> createState() => _ItemSheetState();
}

class _ItemSheetState extends State<ItemSheet> {
  String _search = '';

  @override
  Widget build(BuildContext context) => BlocBuilder<ReceiveCubit, ReceiveState>(
    builder: (context, state) {
      final e = state.editor;
      if (e == null) return const SizedBox.shrink();
      final cubit = context.read<ReceiveCubit>();
      final c = context.colors;
      final product = e.product;
      final padding = EdgeInsets.fromLTRB(
        Space.lg,
        Space.lg,
        Space.lg,
        Space.lg + MediaQuery.viewInsetsOf(context).bottom,
      );
      if (product == null) {
        final q = _search.trim().toLowerCase();
        final matches = [
          for (final p in state.products)
            if (q.isEmpty || p.name.toLowerCase().contains(q)) p,
        ];
        return Padding(
          padding: padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                autofocus: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search product'),
                onChanged: (v) => setState(() => _search = v),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 360),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (final p in matches) ListTile(title: Text(p.name), onTap: () => cubit.chooseProduct(p)),
                  ],
                ),
              ),
            ],
          ),
        );
      }
      final net = e.netQuantity;
      return Padding(
        padding: padding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                e.pack == null ? product.name : '${product.name} · ${e.pack!.name}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              if (product.packs.isNotEmpty) ...[
                const SizedBox(height: Space.sm),
                ChipGroup<ReceivePack?>(
                  options: [...product.packs, null],
                  labelOf: (p) => p?.name ?? 'Loose (${product.stockUnit})',
                  selected: e.pack,
                  onSelected: cubit.choosePack,
                ),
              ],
              if (e.pack != null) ...[
                const SizedBox(height: Space.md),
                NumberField(
                  key: ValueKey('packs-${e.pack!.id}'),
                  value: e.packs,
                  autofocus: true,
                  decoration: const InputDecoration(labelText: 'Packs'),
                  onChanged: cubit.setPacks,
                ),
              ],
              const SizedBox(height: Space.md),
              if (e.usesWeights)
                Text(
                  net == null ? 'Net —' : 'Net ${formatQuantity(net, product.stockUnit)} (gross − tare)',
                  style: Theme.of(context).textTheme.titleMedium,
                )
              else
                NumberField(
                  key: ValueKey('net-${e.pack?.id}'),
                  value: e.net,
                  autofocus: e.pack == null,
                  decoration: InputDecoration(
                    labelText: 'Net ${product.stockUnit}',
                    helperText: e.pack?.fixed == true && !e.netTyped ? 'Filled from the packs' : null,
                  ),
                  onChanged: cubit.setNet,
                ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: cubit.toggleWeights,
                  icon: Icon(e.showWeights ? Icons.expand_less : Icons.chevron_right),
                  label: const Text('Gross / tare (optional)'),
                ),
              ),
              if (e.showWeights)
                Row(
                  children: [
                    Expanded(
                      child: NumberField(
                        value: e.gross,
                        decoration: InputDecoration(labelText: 'Gross ${product.stockUnit}'),
                        onChanged: cubit.setGross,
                      ),
                    ),
                    const SizedBox(width: Space.sm),
                    Expanded(
                      child: NumberField(
                        value: e.tare,
                        decoration: InputDecoration(labelText: 'Tare ${product.stockUnit}'),
                        onChanged: cubit.setTare,
                      ),
                    ),
                  ],
                ),
              if (product.grades.isNotEmpty) ...[
                const SizedBox(height: Space.md),
                const Text('Grade'),
                const SizedBox(height: Space.xs),
                ChipGroup<Grade>(
                  options: product.grades,
                  labelOf: (g) => g.name,
                  selected: e.grade,
                  onSelected: cubit.chooseGrade,
                ),
              ],
              if (e.problem case final p? when e.packs.isNotEmpty || e.net.isNotEmpty || e.gross.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: Space.sm),
                  child: Text(
                    p,
                    style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
                  ),
                ),
              const SizedBox(height: Space.lg),
              MainButton(
                label: e.index == null ? 'ADD' : 'UPDATE',
                onPressed: e.line == null
                    ? null
                    : () {
                        cubit.saveItem();
                        Navigator.pop(context);
                      },
              ),
            ],
          ),
        ),
      );
    },
  );
}
