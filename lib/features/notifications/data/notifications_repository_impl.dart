import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/notifications/domain/notifications.dart';
import 'package:uuid/uuid.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  NotificationsRepositoryImpl(this._client);

  final api.NotificationsClient _client;

  // Marking read is safe to repeat, so each tap is its own action.
  String get _key => const Uuid().v4();

  @override
  Future<Result<Inbox>> inbox() => _run(_client.notificationsControllerList);

  @override
  Future<Result<Inbox>> markRead(String id) =>
      _run(() => _client.notificationsControllerRead(id: id, idempotencyKey: _key));

  @override
  Future<Result<Inbox>> markAllRead() => _run(() => _client.notificationsControllerReadAll(idempotencyKey: _key));

  Future<Result<Inbox>> _run(Future<api.NotificationListDtoOutput> Function() call) async {
    try {
      return Ok(inboxFromDto(await call()));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

Inbox inboxFromDto(api.NotificationListDtoOutput d) => Inbox(
  unread: d.unread,
  items: [
    for (final n in d.items)
      AppNotification(id: n.id, type: n.type, title: n.title, body: n.body, read: n.read, createdAt: n.createdAt),
  ],
);
