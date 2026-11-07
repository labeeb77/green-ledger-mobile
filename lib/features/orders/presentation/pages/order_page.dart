import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/check_screen.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/orders/presentation/bloc/order_cubit.dart';
import 'package:green_ledger_mobile/features/orders/presentation/widgets/line_sheet.dart';

/// Take order (ux-design 4.2). Pops with `true` once the order is sent.
class OrderPage extends StatelessWidget {
  const OrderPage({required this.target, this.canEditRate = false, this.now, super.key});

  final OrderTarget target;

  /// Owner/manager: rates are editable; agents see them as text.
  final bool canEditRate;

  /// Fixed clock for tests.
  final DateTime? now;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = OrderCubit(context.read<OrdersRepository>(), target, canEditRate: canEditRate, now: now);
      unawaited(cubit.load());
      return cubit;
    },
    child: BlocConsumer<OrderCubit, OrderState>(
      // The line sheet opens whenever a product is picked.
      listenWhen: (before, now) => before.editor == null && now.editor != null,
      listener: (context, state) async {
        final cubit = context.read<OrderCubit>();
        await showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (_) => BlocProvider.value(value: cubit, child: const LineSheet()),
        );
        cubit.closeEditor();
      },
      builder: (context, state) {
        final cubit = context.read<OrderCubit>();
        return PopScope(
          canPop: state.step == OrderStep.form,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            if (state.step == OrderStep.saved) {
              context.pop(true);
            } else if (!state.busy) {
              cubit.back();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text('Order · ${target.name}'),
              automaticallyImplyLeading: state.step != OrderStep.saved,
            ),
            body: switch (state.step) {
              OrderStep.form => _Form(target: target, state: state),
              OrderStep.check => _Check(target: target, state: state, overLimitBy: cubit.overLimitBy),
              OrderStep.saved => SavedScreen(
                title: state.placed!.waiting ? 'Waiting for approval' : 'Sent ${state.placed!.number}',
                subtitle: state.placed!.waiting
                    ? '${state.placed!.number} · the owner decides'
                    : '≈ ${formatMoney(state.placed!.total)} · ${target.name}',
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
  const _Form({required this.target, required this.state});

  final OrderTarget target;
  final OrderState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OrderCubit>();
    final c = context.colors;
    final text = Theme.of(context).textTheme;
    if (state.loading) return const SkeletonList();
    if (state.loadFailure case final f?) {
      return ListView(
        padding: const EdgeInsets.all(Space.lg),
        children: [
          FailureMessage(f),
          const SizedBox(height: Space.md),
          OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
        ],
      );
    }
    final last = state.history.firstOrNull;
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              Row(
                children: [
                  const Expanded(child: Text('Credit left')),
                  if (target.creditLimit == 0)
                    Text(
                      'Cash only',
                      style: TextStyle(fontWeight: FontWeight.w600, color: c.muted),
                    )
                  else
                    AmountText(target.creditLeft),
                ],
              ),
              if (last != null && state.lines.isEmpty) ...[
                const SizedBox(height: Space.md),
                OutlinedButton.icon(
                  onPressed: state.busy ? null : () => unawaited(cubit.repeatLast()),
                  icon: const Icon(Icons.replay),
                  label: Text('Repeat last order (${formatDate(last.date)}, ${last.lines.length})'),
                ),
              ],
              const SizedBox(height: Space.md),
              TextField(
                decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search product'),
                onChanged: cubit.search,
              ),
              for (final p in state.matches.take(8))
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(p.name),
                  trailing: const Icon(Icons.add),
                  onTap: () => unawaited(cubit.openProduct(p)),
                ),
              if (state.query.trim().isEmpty && state.recentProducts.isNotEmpty) ...[
                const SizedBox(height: Space.md),
                Text('Recent', style: text.titleSmall),
                const SizedBox(height: Space.xs),
                Wrap(
                  spacing: Space.sm,
                  runSpacing: Space.sm,
                  children: [
                    for (final p in state.recentProducts)
                      ActionChip(label: Text(p.name), onPressed: () => unawaited(cubit.openProduct(p))),
                  ],
                ),
              ],
              const SizedBox(height: Space.lg),
              if (state.lines.isNotEmpty) Text('Lines', style: text.titleSmall),
              for (final (i, line) in state.lines.indexed)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(line.product.name),
                  subtitle: Text('${line.describe} · ${rateText(line.rate, line.ratePer, line)}'),
                  onTap: () => cubit.editLine(i),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('≈ ${formatMoney(line.amount)}'),
                      IconButton(
                        tooltip: 'Remove',
                        icon: const Icon(Icons.close),
                        onPressed: () => cubit.removeLine(i),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: Space.md),
              Text('Note', style: text.titleSmall),
              const SizedBox(height: Space.xs),
              Wrap(
                spacing: Space.sm,
                runSpacing: Space.sm,
                children: [
                  for (final chip in orderNoteChips)
                    FilterChip(
                      label: Text(chip),
                      selected: state.notes.contains(chip),
                      onSelected: (_) => cubit.toggleNote(chip),
                    ),
                ],
              ),
              const SizedBox(height: Space.sm),
              TextFormField(
                initialValue: state.noteText,
                decoration: const InputDecoration(labelText: 'Note (optional)'),
                textCapitalization: TextCapitalization.sentences,
                onChanged: cubit.setNoteText,
              ),
              if (state.failure case final f?) ...[const SizedBox(height: Space.md), FailureMessage(f)],
            ],
          ),
        ),
        BottomActionBar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Expanded(child: Text('Total')),
                  Text('≈ ${formatMoney(state.total)}', style: text.titleLarge),
                ],
              ),
              const SizedBox(height: Space.sm),
              MainButton(label: 'NEXT', onPressed: state.lines.isEmpty ? null : cubit.next),
            ],
          ),
        ),
      ],
    );
  }
}

/// `₹30/kg`, `₹1,200/Bag`.
String rateText(int rate, RatePer ratePer, OrderLine? line, {String? stockUnit, String? packName}) {
  final per = ratePer == RatePer.pack
      ? (line?.unit.name ?? packName ?? 'pack')
      : (line?.product.stockUnit ?? stockUnit ?? '');
  return '${formatMoney(rate)}/$per';
}

class _Check extends StatelessWidget {
  const _Check({required this.target, required this.state, required this.overLimitBy});

  final OrderTarget target;
  final OrderState state;
  final int overLimitBy;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OrderCubit>();
    final c = context.colors;
    final network = state.failure?.kind == FailureKind.network;
    return CheckScreen(
      title: 'Order ≈ ${formatMoney(state.total)} for ${target.name}',
      saving: state.busy,
      failure: state.failure,
      saveLabel: network ? 'SEND AGAIN' : 'SEND',
      onSave: () => unawaited(cubit.place()),
      onBack: cubit.back,
      lines: [
        for (final l in state.lines)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Space.xs),
            child: Text(
              '${l.product.name} · ${l.describe} · ${rateText(l.rate, l.ratePer, l)}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        if (state.note.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: Space.sm),
            child: Text('Note: ${state.note}'),
          ),
        const SizedBox(height: Space.md),
        Text('Final amount after weighing', style: TextStyle(color: c.muted)),
        if (overLimitBy > 0)
          Padding(
            padding: const EdgeInsets.only(top: Space.md),
            child: Text(
              'Needs approval: over limit by ${formatMoney(overLimitBy)}',
              style: TextStyle(color: c.pending, fontWeight: FontWeight.w600),
            ),
          ),
      ],
    );
  }
}
