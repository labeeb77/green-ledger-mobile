import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/format/units.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/check_screen.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/number_field.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';
import 'package:green_ledger_mobile/features/dispatch/presentation/bloc/dispatch_cubits.dart';

/// One order: each line shows what was ordered, then Packs and Net. Pops with `true`
/// once dispatched.
class DispatchOrderPage extends StatelessWidget {
  const DispatchOrderPage({required this.order, this.now, super.key});

  final DispatchOrder order;

  /// Fixed clock for tests.
  final DateTime? now;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => DispatchOrderCubit(context.read<DispatchRepository>(), order, now: now),
    child: BlocBuilder<DispatchOrderCubit, DispatchOrderState>(
      builder: (context, state) {
        final cubit = context.read<DispatchOrderCubit>();
        return PopScope(
          canPop: state.step == DispatchStep.form,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            if (state.step == DispatchStep.saved) {
              context.pop(true);
            } else if (!state.busy) {
              cubit.back();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text('${order.number} · ${order.shop}'),
              automaticallyImplyLeading: state.step != DispatchStep.saved,
            ),
            body: switch (state.step) {
              DispatchStep.form => _Form(order: order, state: state),
              DispatchStep.check => _Check(order: order, state: state),
              DispatchStep.saved => SavedScreen(
                title: 'Dispatched',
                subtitle: [
                  if (state.result!.billNumber case final n?) 'Bill $n created' else 'Bill created',
                  if (!state.result!.orderDone) 'The rest stays on the order',
                ].join(' · '),
                mainLabel: 'DONE',
                onMain: () => context.pop(true),
              ),
            },
          ),
        );
      },
    ),
  );
}

class _Form extends StatelessWidget {
  const _Form({required this.order, required this.state});

  final DispatchOrder order;
  final DispatchOrderState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DispatchOrderCubit>();
    final c = context.colors;
    final text = Theme.of(context).textTheme;
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              if (order.notes case final n? when n.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: Space.md),
                  child: Text('Note: $n', style: TextStyle(color: c.muted)),
                ),
              for (final line in order.lines) ...[
                Text(line.product, style: text.titleMedium),
                Text('Ordered ${line.orderedText}', style: TextStyle(color: c.muted)),
                const SizedBox(height: Space.sm),
                Row(
                  children: [
                    if (line.isPack) ...[
                      Expanded(
                        child: NumberField(
                          value: cubit.entryFor(line.id).packs,
                          decoration: InputDecoration(labelText: line.packName),
                          onChanged: (v) => cubit.setPacks(line.id, v),
                        ),
                      ),
                      const SizedBox(width: Space.sm),
                    ],
                    Expanded(
                      child: NumberField(
                        value: cubit.entryFor(line.id).net,
                        decoration: InputDecoration(
                          labelText: 'Net ${line.stockUnit}',
                          suffixIcon:
                              line.fixedPack && cubit.quantityFor(line.id) != null && !cubit.entryFor(line.id).netTyped
                              ? Icon(Icons.check, color: c.paid)
                              : null,
                        ),
                        onChanged: (v) => cubit.setNet(line.id, v),
                      ),
                    ),
                  ],
                ),
                const Divider(height: Space.xl),
              ],
              TextFormField(
                initialValue: state.vehicleNo,
                decoration: const InputDecoration(labelText: 'Vehicle (optional)'),
                textCapitalization: TextCapitalization.characters,
                onChanged: cubit.setVehicle,
              ),
            ],
          ),
        ),
        BottomActionBar(
          child: MainButton(label: 'NEXT', onPressed: cubit.sentLines.isEmpty ? null : cubit.next),
        ),
      ],
    );
  }
}

class _Check extends StatelessWidget {
  const _Check({required this.order, required this.state});

  final DispatchOrder order;
  final DispatchOrderState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DispatchOrderCubit>();
    final sent = {for (final s in cubit.sentLines) s.lineId: s};
    final network = state.failure?.kind == FailureKind.network;
    return CheckScreen(
      title: 'Dispatch ${order.number} to ${order.shop}',
      saving: state.busy,
      failure: state.failure,
      saveLabel: network ? 'SEND AGAIN' : 'DISPATCH',
      onSave: () => unawaited(cubit.dispatch()),
      onBack: cubit.back,
      lines: [
        for (final line in order.lines)
          if (sent[line.id] case final s?) ...[
            Padding(
              padding: const EdgeInsets.only(top: Space.sm),
              child: Text(
                [
                  line.product,
                  if (s.packCount != null) '${plain(s.packCount!)} ${line.packName}',
                  formatQuantity(s.quantity, line.stockUnit),
                ].join(' · '),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            if (cubit.isShort(line)) ...[
              // What stays on the order after this dispatch (48 of 50 kg → "2 kg left").
              Text(
                '${plain(fromMilli(toMilli(line.pending) - toMilli(s.quantity)))} ${line.stockUnit} left',
                style: TextStyle(color: context.colors.muted),
              ),
              const SizedBox(height: Space.xs),
              SegmentedButton<bool>(
                segments: const [
                  ButtonSegment(value: true, label: Text('Send rest later')),
                  ButtonSegment(value: false, label: Text('Close – no more')),
                ],
                selected: {state.keepOpen.contains(line.id)},
                onSelectionChanged: (v) => cubit.sendRestLater(line.id, later: v.single),
              ),
            ],
          ],
        if (order.lines.any((l) => !sent.containsKey(l.id)))
          Padding(
            padding: const EdgeInsets.only(top: Space.md),
            child: Text(
              'Not sent now: ${order.lines.where((l) => !sent.containsKey(l.id)).map((l) => l.product).join(', ')}',
            ),
          ),
        if (state.vehicleNo.trim().isNotEmpty) Text('Vehicle ${state.vehicleNo.trim()}'),
      ],
    );
  }
}
