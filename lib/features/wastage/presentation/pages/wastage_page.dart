import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/app_numpad.dart';
import 'package:green_ledger_mobile/core/widgets/check_screen.dart';
import 'package:green_ledger_mobile/core/widgets/chip_group.dart';
import 'package:green_ledger_mobile/core/widgets/saved_screen.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/wastage/domain/wastage.dart';
import 'package:green_ledger_mobile/features/wastage/presentation/bloc/wastage_cubit.dart';
import 'package:image_picker/image_picker.dart';

/// Takes a photo of the wasted stock; returns its path or null. Replaced in tests.
typedef TakeWastagePhoto = Future<String?> Function();

Future<String?> _camera() async =>
    (await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 70, maxWidth: 1600))?.path;

/// Wastage (ux-design 4.7). Pops with `true` once saved. No value is ever shown.
class WastagePage extends StatelessWidget {
  const WastagePage({this.takePhoto = _camera, this.now, super.key});

  final TakeWastagePhoto takePhoto;

  /// Fixed clock for tests.
  final DateTime? now;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = WastageCubit(context.read<WastageRepository>(), now: now);
      unawaited(cubit.load());
      return cubit;
    },
    child: BlocBuilder<WastageCubit, WastageState>(
      builder: (context, state) {
        final cubit = context.read<WastageCubit>();
        return PopScope(
          canPop: state.step == WastageStep.product,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            if (state.step == WastageStep.saved) {
              context.pop(true);
            } else if (!state.busy) {
              cubit.back();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(state.product == null ? 'Wastage' : 'Wastage · ${state.product!.name}'),
              automaticallyImplyLeading: state.step != WastageStep.saved,
            ),
            body: switch (state.step) {
              WastageStep.product => _Products(state: state),
              WastageStep.form => _Form(state: state, takePhoto: takePhoto),
              WastageStep.check => _Check(state: state),
              WastageStep.saved => SavedScreen(
                title: state.result!.waiting ? 'Sent for approval' : 'Saved ${state.result!.number ?? 'wastage'}',
                subtitle: state.result!.waiting
                    ? 'Above the owner’s limit · the owner decides'
                    : '${formatQuantity(state.amount!, state.product!.stockUnit)} ${state.product!.name}',
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

class _Products extends StatelessWidget {
  const _Products({required this.state});

  final WastageState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WastageCubit>();
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
    return ListView(
      padding: const EdgeInsets.all(Space.lg),
      children: [
        TextField(
          autocorrect: false,
          enableSuggestions: false,
          decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search product'),
          onChanged: cubit.search,
        ),
        for (final p in state.matches)
          ListTile(contentPadding: EdgeInsets.zero, title: Text(p.name), onTap: () => cubit.chooseProduct(p)),
      ],
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({required this.state, required this.takePhoto});

  final WastageState state;
  final TakeWastagePhoto takePhoto;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WastageCubit>();
    final c = context.colors;
    final product = state.product!;
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              Text(
                state.quantity.isEmpty ? '0 ${product.stockUnit}' : '${state.quantity} ${product.stockUnit}',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: Space.lg),
              const Text('Reason'),
              const SizedBox(height: Space.xs),
              ChipGroup<WastageReason>(
                options: WastageReason.values,
                labelOf: (r) => r.label,
                selected: state.reason,
                onSelected: cubit.chooseReason,
              ),
            ],
          ),
        ),
        // The photo button stays above the numpad, so the keys never hide it.
        Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: c.border)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: Space.lg, vertical: Space.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state.amount != null && state.problem != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: Space.xs),
                  child: Text(
                    state.problem!,
                    style: TextStyle(color: c.due, fontWeight: FontWeight.w600),
                  ),
                ),
              if (state.photoPath == null)
                OutlinedButton.icon(
                  onPressed: () async => cubit.setPhoto(await takePhoto()),
                  icon: const Icon(Icons.photo_camera_outlined),
                  label: const Text('Photo'),
                )
              else
                InputChip(
                  avatar: Icon(Icons.check_circle, color: c.paid),
                  label: const Text('Photo added'),
                  onDeleted: () => cubit.setPhoto(null),
                ),
            ],
          ),
        ),
        SafeArea(
          top: false,
          child: AppNumpad(
            value: state.quantity,
            decimals: product.decimals,
            onChanged: cubit.setQuantity,
            onNext: state.problem == null ? cubit.next : null,
          ),
        ),
      ],
    );
  }
}

class _Check extends StatelessWidget {
  const _Check({required this.state});

  final WastageState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WastageCubit>();
    final network = state.failure?.kind == FailureKind.network;
    return CheckScreen(
      title: 'Wastage ${formatQuantity(state.amount!, state.product!.stockUnit)} ${state.product!.name}',
      saving: state.busy,
      failure: state.failure,
      saveLabel: network ? 'SEND AGAIN' : 'SAVE',
      onSave: () => unawaited(cubit.save()),
      onBack: cubit.back,
      lines: [
        Text('Reason: ${state.reason!.label}', style: Theme.of(context).textTheme.bodyLarge),
        Text(state.photoPath == null ? 'No photo' : 'Photo added', style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
