import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/notifications/domain/notifications.dart';

class NotificationsState {
  const NotificationsState({this.inbox, this.loading = false, this.failure});

  /// Null until the first load.
  final Inbox? inbox;
  final bool loading;
  final AppFailure? failure;

  int get unread => inbox?.unread ?? 0;
}

/// The signed-in user's inbox: the top-bar bell's count and the Notifications screen.
/// Refreshed on sign-in, on return to the app and when the screen opens.
class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit(this._repository) : super(const NotificationsState());

  final NotificationsRepository _repository;

  Future<void> load() async {
    emit(NotificationsState(inbox: state.inbox, loading: true));
    _apply(await _repository.inbox());
  }

  /// Read at once on screen; the server's answer settles the count.
  Future<void> markRead(AppNotification n) async {
    final inbox = state.inbox;
    if (n.read || inbox == null) return;
    emit(
      NotificationsState(
        inbox: Inbox(
          unread: inbox.unread > 0 ? inbox.unread - 1 : 0,
          items: [
            for (final i in inbox.items)
              if (i.id == n.id) i.markedRead() else i,
          ],
        ),
      ),
    );
    _apply(await _repository.markRead(n.id), keepOnFailure: true);
  }

  Future<void> markAllRead() async {
    if (state.unread == 0) return;
    _apply(await _repository.markAllRead(), keepOnFailure: true);
  }

  void clear() => emit(const NotificationsState());

  void _apply(Result<Inbox> result, {bool keepOnFailure = false}) {
    if (isClosed) return;
    switch (result) {
      case Ok(:final value):
        emit(NotificationsState(inbox: value));
      case Err(:final failure):
        emit(NotificationsState(inbox: state.inbox, failure: keepOnFailure ? null : failure));
    }
  }
}
