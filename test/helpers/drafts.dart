import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/drafts/drafts_cubit.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/notifications/domain/notifications.dart';
import 'package:green_ledger_mobile/features/notifications/presentation/bloc/notifications_cubit.dart';

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

/// An empty inbox, for tests.
class EmptyInbox implements NotificationsRepository {
  static const Result<Inbox> _empty = Ok(Inbox(unread: 0, items: []));

  @override
  Future<Result<Inbox>> inbox() async => _empty;

  @override
  Future<Result<Inbox>> markRead(String id) async => _empty;

  @override
  Future<Result<Inbox>> markAllRead() async => _empty;
}

/// [child] with a [DraftsCubit] and a [NotificationsCubit] above it (the top bar's ⏳
/// badge and bell read them).
Widget withDrafts(Widget child, {DraftStore? store, Map<DraftKind, DraftSender> senders = const {}}) =>
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) {
            final cubit = DraftsCubit(store ?? MemoryDraftStore(), senders);
            unawaited(cubit.watch());
            return cubit;
          },
        ),
        BlocProvider(create: (_) => NotificationsCubit(EmptyInbox())),
      ],
      child: child,
    );
