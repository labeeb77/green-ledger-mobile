import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';

/// A tab whose screens are built in a later milestone (docs/ROADMAP.md).
class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({required this.title, required this.milestone, super.key});

  final String title;
  final String milestone;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: TopBar(title: title),
    body: EmptyState(message: '$title is coming soon ($milestone).', icon: Icons.construction),
  );
}
