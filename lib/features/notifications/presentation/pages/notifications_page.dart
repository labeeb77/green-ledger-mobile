import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';
import 'package:green_ledger_mobile/features/notifications/domain/notifications.dart';
import 'package:green_ledger_mobile/features/notifications/presentation/bloc/notifications_cubit.dart';

/// Where tapping a notification of [type] goes for [session]; null stays in the inbox.
String? notificationPath(String type, Session session) {
  final tabs = tabsFor(session);
  return switch (type) {
    'approval_requested' when tabs.contains(AppTab.approvals) => AppTab.approvals.path,
    'handover_requested' when session.permissions.canWrite('cash_handovers.confirm') => '/home/handovers',
    'handover_decided' when tabs.contains(AppTab.cash) => AppTab.cash.path,
    // Reviewing happens in the admin panel; Approvals is where the fix (a cancel) lands.
    'mistake_reported' when tabs.contains(AppTab.approvals) => AppTab.approvals.path,
    'mistake_closed' when session.user.role == Role.agent => '/more/mistakes',
    _ => null,
  };
}

/// The notification inbox from the top-bar bell, newest first.
class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  void initState() {
    super.initState();
    unawaited(context.read<NotificationsCubit>().load());
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NotificationsCubit>();
    return BlocBuilder<NotificationsCubit, NotificationsState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          actions: [
            if (state.unread > 0)
              TextButton(onPressed: () => unawaited(cubit.markAllRead()), child: const Text('Mark all read')),
          ],
        ),
        body: switch (state) {
          NotificationsState(inbox: null, failure: final failure?) => ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              FailureMessage(failure),
              const SizedBox(height: Space.md),
              OutlinedButton(onPressed: cubit.load, child: const Text('TRY AGAIN')),
            ],
          ),
          NotificationsState(inbox: null) => const SkeletonList(),
          NotificationsState(inbox: final inbox?) when inbox.items.isEmpty => const EmptyState(
            message: 'No notifications yet',
            icon: Icons.notifications_none,
          ),
          NotificationsState(inbox: final inbox?) => RefreshIndicator(
            onRefresh: cubit.load,
            child: ListView.separated(
              itemCount: inbox.items.length,
              separatorBuilder: (_, _) => const Divider(height: 1),
              itemBuilder: (context, i) => _Row(inbox.items[i]),
            ),
          ),
        },
      ),
    );
  }
}

class _Row extends StatelessWidget {
  const _Row(this.n);

  final AppNotification n;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final auth = context.read<AuthBloc>().state;
    final path = auth is AuthSignedIn ? notificationPath(n.type, auth.session) : null;
    final when = '${formatDate(isoDate(indianToday(n.createdAt)))}, ${formatTime(n.createdAt)}';
    return ListTile(
      leading: Icon(n.read ? Icons.notifications_none : Icons.notifications_active, color: n.read ? c.muted : c.brand),
      title: Text(n.title, style: TextStyle(fontWeight: n.read ? null : FontWeight.w600)),
      subtitle: Text([?n.body, when].join('\n'), style: TextStyle(fontSize: 14, color: c.muted)),
      isThreeLine: n.body != null,
      trailing: path == null ? null : const Icon(Icons.chevron_right),
      onTap: () {
        unawaited(context.read<NotificationsCubit>().markRead(n));
        if (path != null) context.go(path);
      },
    );
  }
}
