import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/paise_field.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/rates/domain/rates.dart';
import 'package:green_ledger_mobile/features/rates/presentation/bloc/rates_cubit.dart';

/// Daily rates (ux-design 4.7, owner/manager): one list with yesterday's rate in grey,
/// "Copy yesterday's rates", and changed rows highlighted until saved.
class RatesPage extends StatelessWidget {
  const RatesPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = RatesCubit(context.read<RatesRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: const _RatesView(),
  );
}

class _RatesView extends StatefulWidget {
  const _RatesView();

  @override
  State<_RatesView> createState() => _RatesViewState();
}

class _RatesViewState extends State<_RatesView> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RatesCubit>();
    return BlocConsumer<RatesCubit, RatesState>(
      listenWhen: (_, next) => next is RatesLoaded && (next.saved || next.saveFailure != null),
      listener: (context, state) {
        final s = state as RatesLoaded;
        final message = s.saveFailure?.message ?? 'Rates saved';
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(switch (state) {
            RatesLoaded(:final list) => 'Rates · ${formatDate(list.date)}',
            _ => 'Daily rates',
          }),
        ),
        bottomNavigationBar: switch (state) {
          final RatesLoaded s when s.edits.isNotEmpty => BottomActionBar(
            child: MainButton(
              label: s.edits.length == 1 ? 'SAVE 1 RATE' : 'SAVE ${s.edits.length} RATES',
              loading: s.saving,
              onPressed: () => unawaited(cubit.save()),
            ),
          ),
          _ => null,
        },
        body: switch (state) {
          RatesLoading() => const SkeletonList(),
          RatesFailed(:final failure) => ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              FailureMessage(failure),
              const SizedBox(height: Space.md),
              OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
            ],
          ),
          final RatesLoaded s when s.list.rows.isEmpty => const EmptyState(
            message: 'No products yet — add them in the admin panel',
            icon: Icons.sell_outlined,
          ),
          final RatesLoaded s => _list(context, s),
        },
      ),
    );
  }

  Widget _list(BuildContext context, RatesLoaded s) {
    final q = _query.trim().toLowerCase();
    final rows = [
      for (final r in s.list.rows)
        if (q.isEmpty || r.productName.toLowerCase().contains(q)) r,
    ];
    return ListView(
      padding: const EdgeInsets.only(bottom: Space.xl),
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(Space.lg, Space.md, Space.lg, Space.sm),
          child: TextField(
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search products'),
            textInputAction: TextInputAction.search,
            onChanged: (text) => setState(() => _query = text),
          ),
        ),
        if (s.canCopyYesterday)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Space.lg),
            child: OutlinedButton.icon(
              icon: const Icon(Icons.content_copy_outlined),
              label: const Text('COPY YESTERDAY’S RATES'),
              onPressed: s.saving ? null : context.read<RatesCubit>().copyYesterday,
            ),
          ),
        for (final row in rows) _RateTile(row, state: s),
      ],
    );
  }
}

class _RateTile extends StatelessWidget {
  const _RateTile(this.row, {required this.state});

  final RateRow row;
  final RatesLoaded state;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final changed = state.isChanged(row);
    return ColoredBox(
      color: changed ? c.pendingBackground : Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Space.lg, vertical: Space.sm),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(row.productName, style: Theme.of(context).textTheme.titleMedium),
                  Text(
                    [
                      'per ${row.unitLabel}',
                      if (row.previousRate case final p?) 'Yesterday ${formatMoney(p)}',
                    ].join(' · '),
                    style: TextStyle(fontSize: 14, color: c.muted),
                  ),
                ],
              ),
            ),
            const SizedBox(width: Space.md),
            SizedBox(
              width: 120,
              child: PaiseField(
                key: ValueKey(row.key),
                value: state.rateOf(row) ?? 0,
                onChanged: (paise) => context.read<RatesCubit>().setRate(row, paise),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
