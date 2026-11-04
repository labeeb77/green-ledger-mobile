import 'package:flutter/material.dart';

/// The top bar of every screen: title and search (ux-design section 3). Search arrives
/// in M4; until then it says so.
class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({required this.title, super.key});

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
    title: Text(title),
    actions: [
      IconButton(
        tooltip: 'Search',
        icon: const Icon(Icons.search),
        onPressed: () => ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(const SnackBar(content: Text('Search is coming soon.'))),
      ),
    ],
  );
}
