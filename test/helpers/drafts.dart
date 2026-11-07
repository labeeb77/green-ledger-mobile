import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/drafts/drafts_cubit.dart';

/// Drafts in memory, for tests.
class MemoryDraftStore implements DraftStore {
  MemoryDraftStore([List<Draft> drafts = const []]) : _drafts = {for (final d in drafts) d.id: d};

  final Map<String, Draft> _drafts;
  final _changes = StreamController<List<Draft>>.broadcast();

  List<Draft> get drafts => _drafts.values.toList();

  @override
  Stream<List<Draft>> watch() async* {
    yield drafts;
    yield* _changes.stream;
  }

  @override
  Future<void> keep(Draft draft) async => _set(() => _drafts[draft.id] = draft);

  @override
  Future<void> markFailed(String id, String message) async => _set(() {
    final d = _drafts[id];
    if (d == null) return;
    _drafts[id] = Draft(
      id: d.id,
      kind: d.kind,
      title: d.title,
      subtitle: d.subtitle,
      payload: d.payload,
      createdAt: d.createdAt,
      lastError: message,
    );
  });

  @override
  Future<void> remove(String id) async => _set(() => _drafts.remove(id));

  void _set(void Function() change) {
    change();
    _changes.add(drafts);
  }
}

/// [child] with a [DraftsCubit] above it (the top bar's ⏳ badge reads it).
Widget withDrafts(Widget child, {DraftStore? store, Map<DraftKind, DraftSender> senders = const {}}) => BlocProvider(
  create: (_) {
    final cubit = DraftsCubit(store ?? MemoryDraftStore(), senders);
    unawaited(cubit.watch());
    return cubit;
  },
  child: child,
);
