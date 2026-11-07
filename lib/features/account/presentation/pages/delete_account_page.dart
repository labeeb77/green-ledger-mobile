import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/account/domain/account.dart';
import 'package:green_ledger_mobile/features/account/presentation/bloc/delete_account_cubit.dart';

/// Delete account (both app stores): explains what happens, takes an optional reason and
/// sends the request after a confirm step; afterwards it shows the request's status.
class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({required this.isOwner, super.key});

  /// An owner's request closes the whole business, so the wording differs.
  final bool isOwner;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = DeleteAccountCubit(context.read<AccountRepository>());
      unawaited(cubit.load());
      return cubit;
    },
    child: _View(isOwner: isOwner),
  );
}

class _View extends StatefulWidget {
  const _View({required this.isOwner});

  final bool isOwner;

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  final _reason = TextEditingController();

  @override
  void dispose() {
    _reason.dispose();
    super.dispose();
  }

  Future<void> _confirm(BuildContext context) async {
    final cubit = context.read<DeleteAccountCubit>();
    final yes = await showModalBottomSheet<bool>(
      context: context,
      showDragHandle: true,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(Space.lg, 0, Space.lg, Space.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Send the deletion request?', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: Space.xl),
              FilledButton(
                style: FilledButton.styleFrom(backgroundColor: context.colors.due),
                onPressed: () => Navigator.pop(context, true),
                child: const Text('YES, SEND REQUEST'),
              ),
              const SizedBox(height: Space.sm),
              TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
            ],
          ),
        ),
      ),
    );
    if (yes ?? false) await cubit.request(_reason.text);
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final what = widget.isOwner
        ? 'Deleting the owner account closes the whole business on Wholesale Manager. Our support team '
              'will call you before anything is removed.'
        : 'Your business owner removes your login. Bills and receipts you made stay in the business’s '
              'books with your name, because posted entries are never changed.';
    return BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
      listenWhen: (a, b) => b.failure != null && a.failure != b.failure,
      listener: (context, s) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(s.failure!.message))),
      builder: (context, s) => Scaffold(
        appBar: AppBar(title: const Text('Delete account')),
        bottomNavigationBar: s.canRequest
            ? BottomActionBar(
                child: MainButton(
                  label: 'REQUEST DELETION',
                  loading: s.sending,
                  onPressed: () => unawaited(_confirm(context)),
                ),
              )
            : null,
        body: s.loading
            ? const SkeletonList(rows: 3)
            : ListView(
                padding: const EdgeInsets.all(Space.lg),
                children: [
                  if (s.request case final r?) ...[_Status(r), const SizedBox(height: Space.xl)],
                  Text(what),
                  if (s.canRequest) ...[
                    const SizedBox(height: Space.lg),
                    TextField(
                      controller: _reason,
                      maxLength: 500,
                      maxLines: 3,
                      decoration: const InputDecoration(labelText: 'Reason (optional)'),
                    ),
                  ],
                  const SizedBox(height: Space.md),
                  Text('You can keep using the app until the request is handled.', style: TextStyle(color: c.muted)),
                ],
              ),
      ),
    );
  }
}

class _Status extends StatelessWidget {
  const _Status(this.r);

  final DeletionRequest r;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final asked = formatDate(isoDate(indianToday(r.createdAt)));
    final (text, color, background) = switch (r.status) {
      DeletionStatus.pending => (
        'Request sent $asked. ${r.byOwner ? 'Your owner' : 'Support'} will remove your account.',
        c.pending,
        c.pendingBackground,
      ),
      DeletionStatus.done => ('Your account deletion was carried out.', c.muted, c.surface),
      DeletionStatus.declined => (
        'Your request of $asked was declined${r.closedNote == null ? '' : ': ${r.closedNote}'}. '
            'You can ask again.',
        c.due,
        c.dueBackground,
      ),
    };
    return DecoratedBox(
      decoration: BoxDecoration(color: background, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(Space.md),
        child: Text(
          text,
          style: TextStyle(color: color, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
