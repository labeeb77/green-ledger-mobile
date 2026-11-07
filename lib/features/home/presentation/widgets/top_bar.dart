import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/app/router/redirect.dart';
import 'package:green_ledger_mobile/core/drafts/drafts_badge.dart';
import 'package:green_ledger_mobile/features/notifications/presentation/widgets/notifications_bell.dart';

/// The top bar of every screen: title, the ⏳ count of unsent entries, the bell and search
/// (ux-design section 3).
class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({required this.title, super.key});

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    title: Text(title),
    actions: [
      const DraftsBadge(),
      const NotificationsBell(),
      IconButton(
        tooltip: 'Search',
        icon: const Icon(Icons.search),
        onPressed: () => unawaited(context.push(Paths.search)),
      ),
    ],
  );
}
