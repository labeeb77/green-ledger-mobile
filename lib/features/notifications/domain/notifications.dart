import 'package:green_ledger_mobile/core/result.dart';

/// An inbox entry (ux-design section 9): approvals, results and handover requests.
class AppNotification {
  const AppNotification({
    required this.id,
    required this.type,
    required this.title,
    required this.read,
    required this.createdAt,
    this.body,
  });

  final String id;

  /// `approval_requested`, `approval_decided`, `handover_requested`, `handover_decided`,
  /// `subscription_expiry`, …
  final String type;
  final String title;
  final String? body;
  final bool read;
  final DateTime createdAt;

  AppNotification markedRead() =>
      AppNotification(id: id, type: type, title: title, body: body, read: true, createdAt: createdAt);
}

class Inbox {
  const Inbox({required this.unread, required this.items});

  final int unread;

  /// Newest first.
  final List<AppNotification> items;
}

abstract interface class NotificationsRepository {
  Future<Result<Inbox>> inbox();

  Future<Result<Inbox>> markRead(String id);

  Future<Result<Inbox>> markAllRead();
}
