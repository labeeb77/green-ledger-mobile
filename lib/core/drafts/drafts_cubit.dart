import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/result.dart';

final class DraftsState {
  const DraftsState({this.drafts = const [], this.sending = const {}, this.lastSaved});

  final List<Draft> drafts;

  /// Ids being sent now.
  final Set<String> sending;

  /// What the last successful send saved (e.g. "Saved R-0042"), for a snackbar.
  final String? lastSaved;
}

/// The signed-in user's drafts: the ⏳ count in the top bar and the Drafts screen.
class DraftsCubit extends Cubit<DraftsState> {
  DraftsCubit(this._store, this._senders) : super(const DraftsState());

  final DraftStore _store;
  final Map<DraftKind, DraftSender> _senders;
  StreamSubscription<List<Draft>>? _subscription;

  /// (Re)reads the drafts for the user now signed in; call after every sign-in or out.
  Future<void> watch() async {
    await _subscription?.cancel();
    _subscription = _store.watch().listen((drafts) {
      if (!isClosed) emit(DraftsState(drafts: drafts, sending: state.sending));
    });
  }

  /// SEND AGAIN with the draft's own key. Saved → the draft goes; a network failure keeps
  /// it as it is; any other failure keeps it with the reason, for the user to delete.
  Future<void> send(Draft draft) async {
    if (state.sending.contains(draft.id)) return;
    emit(DraftsState(drafts: state.drafts, sending: {...state.sending, draft.id}));
    final result = await _senders[draft.kind]!(draft);
    switch (result) {
      case Ok(:final value):
        await _store.remove(draft.id);
        _done(draft.id, saved: value);
      case Err(:final failure):
        await _store.markFailed(draft.id, keptIfOffline(failure).message);
        _done(draft.id);
    }
  }

  void _done(String id, {String? saved}) {
    if (isClosed) return;
    emit(DraftsState(drafts: state.drafts, sending: {...state.sending}..remove(id), lastSaved: saved));
  }

  Future<void> delete(Draft draft) => _store.remove(draft.id);

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    await super.close();
  }
}
