import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/chip_group.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';
import 'package:green_ledger_mobile/features/visits/presentation/bloc/visit_cubit.dart';

/// Visit note (ux-design 4.7). Pops with `true` once the visit is saved.
class VisitPage extends StatelessWidget {
  const VisitPage({required this.customerId, required this.shopName, this.now, super.key});

  final String customerId;
  final String shopName;

  /// Fixed clock for tests.
  final DateTime? now;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => VisitCubit(context.read<VisitRepository>(), customerId, shopName, now: now),
    child: BlocBuilder<VisitCubit, VisitState>(
      builder: (context, state) => PopScope(
        canPop: !state.saved,
        onPopInvokedWithResult: (didPop, _) {
          if (!didPop) context.pop(true);
        },
        child: Scaffold(
          appBar: AppBar(title: Text(shopName), automaticallyImplyLeading: !state.saved),
          body: state.saved
              ? SavedScreen(
                  title: 'Visit saved',
                  subtitle: _summary(state),
                  mainLabel: 'DONE',
                  onMain: () => context.pop(true),
                )
              : _Form(state: state),
        ),
      ),
    ),
  );
}

/// `Promised · Sat 14 Nov`, or the outcome alone.
String _summary(VisitState state) {
  final label = state.outcome?.label ?? '';
  final date = state.promiseDate;
  return date == null ? label : '$label · ${formatDate(isoDate(date), now: state.today)}';
}

class _Form extends StatelessWidget {
  const _Form({required this.state});

  final VisitState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<VisitCubit>();
    final c = context.colors;
    final theme = Theme.of(context).textTheme;
    final network = state.failure?.kind == FailureKind.network;
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              Text('What happened?', style: theme.titleMedium),
              const SizedBox(height: Space.sm),
              ChipGroup<VisitOutcome>(
                options: VisitOutcome.values,
                labelOf: (o) => o.label,
                selected: state.outcome,
                onSelected: cubit.choose,
              ),
              if (state.outcome == VisitOutcome.promised) ...[
                const SizedBox(height: Space.xl),
                Text('When will they pay?', style: theme.titleMedium),
                const SizedBox(height: Space.sm),
                ChipGroup<PromiseChoice>(
                  options: PromiseChoice.values,
                  labelOf: (p) => p == PromiseChoice.pick && state.promiseChoice == PromiseChoice.pick
                      ? formatDate(isoDate(state.promiseDate!), now: state.today)
                      : p.label,
                  selected: state.promiseChoice,
                  onSelected: (choice) async {
                    if (choice != PromiseChoice.pick) {
                      cubit.promise(choice);
                      return;
                    }
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: state.promiseDate ?? promiseDateFor(PromiseChoice.pick, state.today),
                      firstDate: state.today,
                      lastDate: state.today.add(const Duration(days: 180)),
                    );
                    if (picked != null) cubit.pickDate(picked);
                  },
                ),
                if (state.promiseDate case final date? when state.promiseChoice != PromiseChoice.pick)
                  Padding(
                    padding: const EdgeInsets.only(top: Space.sm),
                    child: Text(
                      formatDate(isoDate(date), now: state.today),
                      style: TextStyle(color: c.muted),
                    ),
                  ),
              ],
              const SizedBox(height: Space.xl),
              TextFormField(
                initialValue: state.note,
                decoration: const InputDecoration(labelText: 'Note (optional)'),
                textCapitalization: TextCapitalization.sentences,
                maxLines: 3,
                minLines: 1,
                onChanged: cubit.setNote,
              ),
              if (state.outcome != null && state.problem != null)
                Padding(
                  padding: const EdgeInsets.only(top: Space.md),
                  child: Text(
                    state.problem!,
                    style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
                  ),
                ),
              if (state.failure case final f?) ...[const SizedBox(height: Space.md), FailureMessage(f)],
            ],
          ),
        ),
        BottomActionBar(
          child: MainButton(
            label: network ? 'SEND AGAIN' : 'SAVE',
            loading: state.busy,
            onPressed: state.problem == null ? cubit.save : null,
          ),
        ),
      ],
    );
  }
}
