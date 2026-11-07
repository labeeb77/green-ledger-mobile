import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/check_screen.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/receive/domain/receive.dart';
import 'package:green_ledger_mobile/features/receive/presentation/bloc/receive_cubit.dart';
import 'package:green_ledger_mobile/features/receive/presentation/widgets/item_sheet.dart';
import 'package:image_picker/image_picker.dart';

/// Takes a slip photo; returns its path or null. Replaced in tests.
typedef TakePhoto = Future<String?> Function();

Future<String?> _camera() async =>
    (await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 70, maxWidth: 1600))?.path;

/// Receive goods (ux-design 4.3). Pops with `true` once saved.
class ReceivePage extends StatelessWidget {
  const ReceivePage({this.takePhoto = _camera, this.now, super.key});

  final TakePhoto takePhoto;

  /// Fixed clock for tests.
  final DateTime? now;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = ReceiveCubit(context.read<ReceiveRepository>(), now: now);
      unawaited(cubit.load());
      return cubit;
    },
    child: BlocConsumer<ReceiveCubit, ReceiveState>(
      listenWhen: (before, now) => (before.editor == null && now.editor != null) || (!before.askSlip && now.askSlip),
      listener: (context, state) async {
        final cubit = context.read<ReceiveCubit>();
        if (state.askSlip) {
          final add = await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('No slip photo — add one?'),
              actions: [
                TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Continue')),
                FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('Add photo')),
              ],
            ),
          );
          if (add ?? false) {
            cubit.setSlipPhoto(await takePhoto());
          } else {
            cubit.next(skipSlip: true);
          }
          return;
        }
        await showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (_) => BlocProvider.value(value: cubit, child: const ItemSheet()),
        );
        cubit.closeEditor();
      },
      builder: (context, state) {
        final cubit = context.read<ReceiveCubit>();
        return PopScope(
          canPop: state.step == ReceiveStep.form,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            if (state.step == ReceiveStep.saved) {
              context.pop(true);
            } else if (!state.busy) {
              cubit.back();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Receive goods'),
              automaticallyImplyLeading: state.step != ReceiveStep.saved,
            ),
            body: switch (state.step) {
              ReceiveStep.form => _Form(state: state, takePhoto: takePhoto),
              ReceiveStep.check => _Check(state: state),
              ReceiveStep.saved => SavedScreen(
                title: 'Saved ${state.saved!.number}',
                subtitle: state.supplier!.name,
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
  const _Form({required this.state, required this.takePhoto});

  final ReceiveState state;
  final TakePhoto takePhoto;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReceiveCubit>();
    final c = context.colors;
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
    final supplier = state.supplier;
    if (supplier == null) {
      return ListView(
        padding: const EdgeInsets.all(Space.lg),
        children: [
          Text('From which supplier?', style: Theme.of(context).textTheme.titleMedium),
          for (final s in state.suppliers)
            ListTile(contentPadding: EdgeInsets.zero, title: Text(s.name), onTap: () => cubit.chooseSupplier(s)),
          if (state.suppliers.isEmpty) const Text('No suppliers yet — ask the owner to add one.'),
        ],
      );
    }
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              InkWell(
                onTap: () => showModalBottomSheet<void>(
                  context: context,
                  builder: (_) => ListView(
                    shrinkWrap: true,
                    children: [
                      for (final s in state.suppliers)
                        ListTile(
                          title: Text(s.name),
                          onTap: () {
                            cubit.chooseSupplier(s);
                            Navigator.pop(context);
                          },
                        ),
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(child: Text(supplier.name, style: Theme.of(context).textTheme.titleLarge)),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              const SizedBox(height: Space.md),
              for (final (i, line) in state.lines.indexed)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(line.describe),
                  onTap: () => cubit.editItem(i),
                  trailing: IconButton(
                    tooltip: 'Remove',
                    icon: const Icon(Icons.close),
                    onPressed: () => cubit.removeItem(i),
                  ),
                ),
              Wrap(
                spacing: Space.sm,
                children: [
                  OutlinedButton.icon(
                    onPressed: cubit.addItem,
                    icon: const Icon(Icons.add),
                    label: const Text('Add item'),
                  ),
                  if (state.slipPhotoPath == null)
                    OutlinedButton.icon(
                      onPressed: () async => cubit.setSlipPhoto(await takePhoto()),
                      icon: const Icon(Icons.photo_camera_outlined),
                      label: const Text('Slip photo'),
                    )
                  else
                    InputChip(
                      avatar: Icon(Icons.check_circle, color: c.paid),
                      label: const Text('Slip photo added'),
                      onDeleted: () => cubit.setSlipPhoto(null),
                    ),
                ],
              ),
              const SizedBox(height: Space.md),
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
          child: MainButton(label: 'NEXT', onPressed: state.lines.isEmpty ? null : cubit.next),
        ),
      ],
    );
  }
}

class _Check extends StatelessWidget {
  const _Check({required this.state});

  final ReceiveState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReceiveCubit>();
    final network = state.failure?.kind == FailureKind.network;
    final items = state.lines.length == 1 ? '1 item' : '${state.lines.length} items';
    return CheckScreen(
      title: 'Receive $items from ${state.supplier!.name}',
      saving: state.busy,
      failure: state.failure,
      saveLabel: network ? 'SEND AGAIN' : 'SAVE',
      onSave: () => unawaited(cubit.save()),
      onBack: cubit.back,
      lines: [
        for (final l in state.lines)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Space.xs),
            child: Text(l.describe, style: Theme.of(context).textTheme.bodyLarge),
          ),
        const SizedBox(height: Space.sm),
        Text(state.slipPhotoPath == null ? 'No slip photo' : 'Slip photo added'),
        if (state.vehicleNo.trim().isNotEmpty) Text('Vehicle ${state.vehicleNo.trim()}'),
      ],
    );
  }
}
