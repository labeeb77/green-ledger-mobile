import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/check_screen.dart';
import 'package:green_ledger_mobile/core/widgets/chip_group.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/returns/domain/returns.dart';
import 'package:green_ledger_mobile/features/returns/presentation/bloc/returns_cubits.dart';

/// Returns waiting for the godown's inspection.
class ReturnsPage extends StatelessWidget {
  const ReturnsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = ReturnsListCubit(context.read<ReturnsRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: Scaffold(
      appBar: AppBar(title: const Text('Returns to inspect')),
      body: BlocBuilder<ReturnsListCubit, ReturnsListState>(
        builder: (context, state) {
          final cubit = context.read<ReturnsListCubit>();
          if (state.loading && state.returns.isEmpty) return const SkeletonList();
          if (state.failure case final f? when state.returns.isEmpty) {
            return ListView(
              padding: const EdgeInsets.all(Space.lg),
              children: [
                FailureMessage(f),
                const SizedBox(height: Space.md),
                OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
              ],
            );
          }
          if (state.returns.isEmpty) {
            return const EmptyState(message: 'No returns to inspect 🎉', icon: Icons.assignment_return_outlined);
          }
          return RefreshIndicator(
            onRefresh: cubit.load,
            child: ListView(
              children: [
                for (final r in state.returns)
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: Space.lg),
                    title: Text(r.shop),
                    subtitle: Text(
                      '${r.number} · ${formatDate(r.date)} · '
                      '${r.lines.length == 1 ? '1 line' : '${r.lines.length} lines'}',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () async {
                      final saved = await context.push<bool>('/home/returns/inspect', extra: r);
                      if (saved ?? false) await cubit.load();
                    },
                  ),
              ],
            ),
          );
        },
      ),
    ),
  );
}

/// One return: three big chips per line. Pops with `true` once saved.
class InspectPage extends StatelessWidget {
  const InspectPage({required this.ret, super.key});

  final ReturnToInspect ret;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => InspectCubit(context.read<ReturnsRepository>(), ret),
    child: BlocBuilder<InspectCubit, InspectState>(
      builder: (context, state) {
        final cubit = context.read<InspectCubit>();
        final network = state.failure?.kind == FailureKind.network;
        return PopScope(
          canPop: state.step == InspectStep.form,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            if (state.step == InspectStep.saved) {
              context.pop(true);
            } else if (!state.busy) {
              cubit.back();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text('${ret.number} · ${ret.shop}'),
              automaticallyImplyLeading: state.step != InspectStep.saved,
            ),
            body: switch (state.step) {
              InspectStep.form => Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(Space.lg),
                      children: [
                        if (ret.notes case final n? when n.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(bottom: Space.md),
                            child: Text('Note: $n', style: TextStyle(color: context.colors.muted)),
                          ),
                        for (final line in ret.lines) ...[
                          Text(line.product, style: Theme.of(context).textTheme.titleMedium),
                          Text(line.describe),
                          const SizedBox(height: Space.sm),
                          ChipGroup<InspectionResult>(
                            options: InspectionResult.values,
                            labelOf: (r) => r.label,
                            selected: state.results[line.id],
                            onSelected: (r) => cubit.choose(line.id, r),
                          ),
                          const Divider(height: Space.xl),
                        ],
                      ],
                    ),
                  ),
                  BottomActionBar(
                    child: MainButton(label: 'NEXT', onPressed: state.results.isEmpty ? null : cubit.next),
                  ),
                ],
              ),
              InspectStep.check => CheckScreen(
                title: 'Inspection of ${ret.number}',
                saving: state.busy,
                failure: state.failure,
                saveLabel: network ? 'SEND AGAIN' : 'SAVE',
                onSave: () => unawaited(cubit.save()),
                onBack: cubit.back,
                lines: [
                  for (final line in ret.lines)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: Space.xs),
                      child: Text(
                        '${line.product} · ${line.describe} · ${state.results[line.id]?.label ?? 'later'}',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  const SizedBox(height: Space.sm),
                  const Text('Only saleable stock goes back on hand.'),
                ],
              ),
              InspectStep.saved => SavedScreen(
                title: 'Inspection saved',
                subtitle: ret.shop,
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
