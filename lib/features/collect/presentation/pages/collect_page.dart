import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/share/share_service.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/app_numpad.dart';
import 'package:green_ledger_mobile/core/widgets/check_screen.dart';
import 'package:green_ledger_mobile/core/widgets/chip_group.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/paise_field.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/collect/presentation/bloc/collect_cubit.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:image_picker/image_picker.dart';

/// Picks a UPI screenshot; returns its path or null. Replaced in tests.
typedef PickImage = Future<String?> Function();

Future<String?> _pickFromGallery() async =>
    (await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70, maxWidth: 1600))?.path;

/// Collect payment (ux-design 4.1 ② → ④). Pops with `true` once a receipt is saved.
class CollectPage extends StatelessWidget {
  const CollectPage({
    required this.target,
    this.pickImage = _pickFromGallery,
    this.share = const ShareService(),
    this.canChangeAllocation = false,
    super.key,
  });

  final CollectTarget target;

  /// Owner/manager: a "Change" link on Check to choose which bills are settled.
  final bool canChangeAllocation;
  final PickImage pickImage;
  final ShareService share;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = CollectCubit(context.read<CollectRepository>(), context.read<DocumentsRepository>(), target);
      unawaited(cubit.start());
      return cubit;
    },
    child: BlocBuilder<CollectCubit, CollectState>(
      builder: (context, state) {
        final cubit = context.read<CollectCubit>();
        return PopScope(
          // Back from Check returns to the form; from Saved it closes with the result.
          canPop: state.step == CollectStep.form,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            if (state.step == CollectStep.saved) {
              context.pop(true);
            } else if (!state.busy) {
              cubit.back();
            }
          },
          child: Scaffold(
            appBar: AppBar(title: Text(target.name), automaticallyImplyLeading: state.step != CollectStep.saved),
            body: switch (state.step) {
              CollectStep.form => _Form(target: target, state: state, pickImage: pickImage),
              CollectStep.check => _Check(target: target, state: state, canChangeAllocation: canChangeAllocation),
              CollectStep.allocate => _Allocate(state: state),
              CollectStep.saved => SavedScreen(
                title: 'Saved ${state.saved!.number}',
                subtitle: '${formatMoney(state.saved!.total)} from ${target.name}',
                mainLabel: 'SHARE ON WHATSAPP',
                mainLoading: state.sharing,
                failure: state.shareFailure,
                onMain: () async {
                  final file = await cubit.receiptPdf();
                  if (file != null) {
                    await share.shareFile(
                      file.path,
                      text: 'Receipt ${state.saved!.number} · ${formatMoney(state.saved!.total)} · ${target.name}',
                    );
                  }
                },
                onDone: () => context.pop(true),
              ),
            },
          ),
        );
      },
    ),
  );
}

class _Form extends StatelessWidget {
  const _Form({required this.target, required this.state, required this.pickImage});

  final CollectTarget target;
  final CollectState state;
  final PickImage pickImage;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CollectCubit>();
    final c = context.colors;
    final typing = MediaQuery.viewInsetsOf(context).bottom > 0;
    final last = state.selected == state.lines.length - 1;
    final dueAfter = target.due - state.total;
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              Row(
                children: [
                  const Expanded(child: Text('Due')),
                  AmountText(target.due, tone: target.due > 0 ? AmountTone.due : AmountTone.normal),
                ],
              ),
              const SizedBox(height: Space.lg),
              for (final (i, line) in state.lines.indexed) ...[
                _PaymentRow(index: i, line: line, state: state, pickImage: pickImage),
                const SizedBox(height: Space.md),
              ],
              Wrap(
                spacing: Space.sm,
                children: [
                  for (final method in [PaymentMethod.bank, PaymentMethod.cheque])
                    if (!state.has(method))
                      OutlinedButton.icon(
                        onPressed: () => cubit.add(method),
                        icon: const Icon(Icons.add),
                        label: Text(method.label),
                      ),
                ],
              ),
              const Divider(height: Space.xl),
              Row(
                children: [
                  const Expanded(child: Text('Total')),
                  AmountText(state.total, large: true),
                ],
              ),
              const SizedBox(height: Space.xs),
              Row(
                children: [
                  const Expanded(child: Text('Due after')),
                  AmountText(dueAfter < 0 ? 0 : dueAfter, tone: dueAfter > 0 ? AmountTone.due : AmountTone.paid),
                ],
              ),
              if (state.total > 0 && state.problem != null)
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
        if (!typing)
          SafeArea(
            top: false,
            child: AppNumpad(
              value: paiseToRupees(state.lines[state.selected].amount),
              onChanged: (v) => cubit.setAmount(state.selected, rupeesToPaise(v)),
              nextLabel: last ? 'NEXT' : 'NEXT ▸ ${state.lines[state.selected + 1].method.label}',
              onNext: state.busy || (last && state.problem != null) ? null : () => unawaited(cubit.next()),
            ),
          ),
      ],
    );
  }
}

class _PaymentRow extends StatelessWidget {
  const _PaymentRow({required this.index, required this.line, required this.state, required this.pickImage});

  final int index;
  final PaymentLine line;
  final CollectState state;
  final PickImage pickImage;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CollectCubit>();
    final c = context.colors;
    final selected = state.selected == index;
    final accounts = state.accountsFor(line.method);
    final needsAccount = line.method == PaymentMethod.upi || line.method == PaymentMethod.bank;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: selected ? c.brand : c.border, width: selected ? 2 : 1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(Space.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              FocusScope.of(context).unfocus();
              cubit.select(index);
            },
            child: SizedBox(
              height: 48,
              child: Row(
                children: [
                  Expanded(child: Text(line.method.label, style: Theme.of(context).textTheme.titleMedium)),
                  Text(
                    line.amount == 0 ? '₹ —' : formatMoney(line.amount),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: line.amount == 0 ? c.muted : c.text,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (needsAccount && accounts.length > 1) ...[
            const SizedBox(height: Space.sm),
            ChipGroup<String>(
              options: [for (final a in accounts) a.id],
              labelOf: (id) => accounts.firstWhere((a) => a.id == id).name,
              selected: line.accountId,
              onSelected: (id) => cubit.update(index, (l) => l.copyWith(accountId: id)),
            ),
          ],
          if (needsAccount && accounts.isEmpty && line.amount > 0)
            Padding(
              padding: const EdgeInsets.only(top: Space.sm),
              child: Text('No ${line.method.label} account — ask the owner', style: TextStyle(color: c.due)),
            ),
          if (needsAccount && line.amount > 0) ...[
            const SizedBox(height: Space.sm),
            TextFormField(
              initialValue: line.reference,
              decoration: const InputDecoration(labelText: 'Reference (optional)'),
              onChanged: (v) => cubit.update(index, (l) => l.copyWith(reference: v)),
            ),
          ],
          if (line.method == PaymentMethod.upi && line.amount > 0)
            Padding(
              padding: const EdgeInsets.only(top: Space.sm),
              child: line.screenshotPath == null
                  ? TextButton.icon(
                      onPressed: () async {
                        final path = await pickImage();
                        if (path != null) cubit.update(index, (l) => l.copyWith(screenshotPath: () => path));
                      },
                      icon: const Icon(Icons.photo_camera_outlined),
                      label: const Text('Add screenshot (optional)'),
                    )
                  : Row(
                      children: [
                        Icon(Icons.check_circle, color: c.paid),
                        const SizedBox(width: Space.sm),
                        const Expanded(child: Text('Screenshot added')),
                        TextButton(
                          onPressed: () => cubit.update(index, (l) => l.copyWith(screenshotPath: () => null)),
                          child: const Text('Remove'),
                        ),
                      ],
                    ),
            ),
          if (line.method == PaymentMethod.cheque && line.amount > 0) ...[
            const SizedBox(height: Space.sm),
            TextFormField(
              initialValue: line.chequeNo,
              decoration: const InputDecoration(labelText: 'Cheque number'),
              keyboardType: TextInputType.number,
              onChanged: (v) => cubit.update(index, (l) => l.copyWith(chequeNo: v)),
            ),
            const SizedBox(height: Space.sm),
            TextFormField(
              initialValue: line.chequeBank,
              decoration: const InputDecoration(labelText: 'Bank'),
              textCapitalization: TextCapitalization.words,
              onChanged: (v) => cubit.update(index, (l) => l.copyWith(chequeBank: v)),
            ),
            const SizedBox(height: Space.sm),
            Row(
              children: [
                Expanded(
                  child: Text('Cheque date: ${line.chequeDate == null ? 'Today' : formatDate(line.chequeDate!)}'),
                ),
                TextButton(
                  onPressed: () async {
                    final today = indianToday();
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: today,
                      firstDate: today.subtract(const Duration(days: 90)),
                      lastDate: today.add(const Duration(days: 180)),
                    );
                    if (picked != null) {
                      cubit.update(index, (l) => l.copyWith(chequeDate: () => isoDate(picked)));
                    }
                  },
                  child: const Text('Change'),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _Check extends StatelessWidget {
  const _Check({required this.target, required this.state, required this.canChangeAllocation});

  final CollectTarget target;
  final CollectState state;
  final bool canChangeAllocation;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CollectCubit>();
    final preview = state.settles!;
    final dueAfter = target.due - state.total;
    final network = state.failure?.kind == FailureKind.network;
    return CheckScreen(
      title: 'Collect ${formatMoney(state.total)} from ${target.name}',
      saving: state.busy,
      failure: state.failure,
      saveLabel: network ? 'SEND AGAIN' : 'SAVE',
      onSave: () => unawaited(cubit.save()),
      onBack: cubit.back,
      lines: [
        for (final line in state.lines)
          if (line.amount > 0) _CheckLine(_describe(line, state)),
        const SizedBox(height: Space.md),
        for (final bill in preview.bills)
          _CheckLine(
            bill.full ? 'Settles ${bill.number} in full' : 'Settles ${bill.number} ${formatMoney(bill.amount)} part',
          ),
        if (preview.advance > 0) _CheckLine('${formatMoney(preview.advance)} extra kept as advance'),
        if (canChangeAllocation && preview.openBills.isNotEmpty)
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(onPressed: state.busy ? null : cubit.changeAllocation, child: const Text('Change')),
          ),
        const SizedBox(height: Space.md),
        Row(
          children: [
            const Expanded(child: Text('Due after')),
            AmountText(dueAfter < 0 ? 0 : dueAfter, tone: dueAfter > 0 ? AmountTone.due : AmountTone.paid),
          ],
        ),
      ],
    );
  }

  static String _describe(PaymentLine line, CollectState state) {
    final parts = ['${line.method.label} ${formatMoney(line.amount)}'];
    final accounts = state.accountsFor(line.method);
    if (accounts.length > 1 && line.accountId != null) {
      parts.add('to ${accounts.firstWhere((a) => a.id == line.accountId).name}');
    }
    if (line.reference.trim().isNotEmpty) parts.add('ref ${line.reference.trim()}');
    if (line.method == PaymentMethod.cheque) {
      parts.add('no ${line.chequeNo.trim()}, ${line.chequeBank.trim()}');
      if (line.chequeDate case final d?) parts.add('dated ${formatDate(d)}');
    }
    return parts.join(' · ');
  }
}

/// "Change" on Check (owner/manager): how much goes to each open bill, oldest first;
/// what is left stays as advance.
class _Allocate extends StatelessWidget {
  const _Allocate({required this.state});

  final CollectState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CollectCubit>();
    final c = context.colors;
    final settled = state.editing.values.fold(0, (sum, v) => sum + v);
    final problem = state.allocationProblem;
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              Text('Settle ${formatMoney(state.total)}', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: Space.lg),
              for (final bill in state.preview!.openBills)
                Padding(
                  padding: const EdgeInsets.only(bottom: Space.md),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(bill.number, style: const TextStyle(fontWeight: FontWeight.w600)),
                            Text('${formatMoney(bill.open)} open', style: TextStyle(fontSize: 14, color: c.muted)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: PaiseField(
                          key: ValueKey(bill.id),
                          value: state.editing[bill.id] ?? 0,
                          onChanged: (paise) => cubit.setAllocation(bill.id, paise),
                        ),
                      ),
                      TextButton(onPressed: () => cubit.settleInFull(bill.id), child: const Text('Full')),
                    ],
                  ),
                ),
              const Divider(height: Space.xl),
              Row(
                children: [
                  const Expanded(child: Text('Kept as advance')),
                  AmountText(state.total - settled < 0 ? 0 : state.total - settled),
                ],
              ),
              if (problem != null)
                Padding(
                  padding: const EdgeInsets.only(top: Space.md),
                  child: Text(
                    problem,
                    style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
                  ),
                ),
            ],
          ),
        ),
        BottomActionBar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MainButton(label: 'DONE', onPressed: problem == null ? cubit.applyAllocation : null),
              const SizedBox(height: Space.sm),
              TextButton(onPressed: cubit.resetAllocation, child: const Text('Oldest first')),
            ],
          ),
        ),
      ],
    );
  }
}

class _CheckLine extends StatelessWidget {
  const _CheckLine(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: Space.xs),
    child: Text(text, style: Theme.of(context).textTheme.bodyLarge),
  );
}
