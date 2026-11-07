import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/app/router/redirect.dart';
import 'package:green_ledger_mobile/features/notifications/presentation/bloc/notifications_cubit.dart';

/// The top-bar bell with the unread count.
class NotificationsBell extends StatelessWidget {
  const NotificationsBell({super.key});

  @override
  Widget build(BuildContext context) => BlocSelector<NotificationsCubit, NotificationsState, int>(
    selector: (s) => s.unread,
    builder: (context, unread) => IconButton(
      tooltip: unread == 0 ? 'Notifications' : '$unread unread notifications',
      onPressed: () => unawaited(context.push(Paths.notifications)),
      icon: Badge(
        isLabelVisible: unread > 0,
        label: Text(unread > 99 ? '99+' : '$unread'),
        child: Icon(unread > 0 ? Icons.notifications : Icons.notifications_none),
      ),
    ),
  );
}
