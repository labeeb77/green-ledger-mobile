import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/chip_group.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/mistakes/domain/mistakes.dart';
import 'package:green_ledger_mobile/features/mistakes/presentation/bloc/report_mistake_cubit.dart';

/// Opens Report a mistake for [target]; true once the report is sent.
Future<bool> showReportMistakeSheet(BuildContext context, MistakeTarget target) async {
  final repository = context.read<MistakesRepository>();
  final sent = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (_) =>
        BlocProvider(create: (_) => ReportMistakeCubit(repository, target), child: const ReportMistakeSheet()),
  );
  return sent ?? false;
}

class ReportMistakeSheet extends StatelessWidget {
  const ReportMistakeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReportMistakeCubit>();
    final target = cubit.target;
    final c = context.colors;
    final theme = Theme.of(context).textTheme;
    return BlocBuilder<ReportMistakeCubit, ReportMistakeState>(
      builder: (context, state) => SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(Space.lg, 0, Space.lg, Space.lg + MediaQuery.viewInsetsOf(context).bottom),
          child: state.sent
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(Icons.check_circle, color: c.paid, size: 48),
                    const SizedBox(height: Space.md),
                    Text('Reported', style: theme.titleMedium, textAlign: TextAlign.center),
                    const SizedBox(height: Space.xs),
                    Text(
                      'The office will check ${target.number} and fix it. You can follow it in More → My reports.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: c.muted),
                    ),
                    const SizedBox(height: Space.xl),
                    MainButton(label: 'DONE', onPressed: () => Navigator.pop(context, true)),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Report a mistake', style: theme.titleMedium),
                    Text('${target.number} · ${formatMoney(target.total)}', style: TextStyle(color: c.muted)),
                    const SizedBox(height: Space.lg),
                    Text('What is wrong?', style: theme.titleSmall),
                    const SizedBox(height: Space.sm),
                    ChipGroup<MistakeReason>(
                      options: MistakeReason.values,
                      labelOf: (r) => r.label,
                      selected: state.reason,
                      onSelected: cubit.choose,
                    ),
                    const SizedBox(height: Space.lg),
                    TextFormField(
                      initialValue: state.note,
                      decoration: InputDecoration(
                        labelText: state.reason == MistakeReason.other ? 'Note' : 'Note (optional)',
                      ),
                      textCapitalization: TextCapitalization.sentences,
                      maxLength: 1000,
                      maxLines: 3,
                      minLines: 1,
                      onChanged: cubit.setNote,
                    ),
                    if (state.reason != null && state.problem != null)
                      Text(
                        state.problem!,
                        style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
                      ),
                    if (state.failure case final f?) ...[const SizedBox(height: Space.md), FailureMessage(f)],
                    const SizedBox(height: Space.lg),
                    MainButton(
                      label: 'SEND',
                      loading: state.busy,
                      onPressed: state.problem == null ? cubit.send : null,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
