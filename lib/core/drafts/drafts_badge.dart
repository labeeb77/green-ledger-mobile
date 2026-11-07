import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/drafts/drafts_cubit.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';

/// The top-bar ⏳ count of entries kept on the phone; opens the Drafts screen. Hidden
/// when there are none.
class DraftsBadge extends StatelessWidget {
  const DraftsBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.select<DraftsCubit, int>((c) => c.state.drafts.length);
    if (count == 0) return const SizedBox.shrink();
    final c = context.colors;
    return IconButton(
      tooltip: count == 1 ? '1 entry not sent' : '$count entries not sent',
      onPressed: () => unawaited(context.push('/drafts')),
      icon: Badge(
        label: Text('$count'),
        backgroundColor: c.pending,
        child: Icon(Icons.hourglass_top, color: c.pending),
      ),
    );
  }
}
