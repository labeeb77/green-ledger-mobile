import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';

/// Home is built from permission cards (ux-design section 3). The cards are placeholders
/// in M0; each milestone fills its card with live figures and actions.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthBloc>().state;
    if (auth is! AuthSignedIn) return const SizedBox.shrink();
    final session = auth.session;
    final firstName = session.user.name.split(' ').first;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: TopBar(title: 'Hi $firstName'),
      body: ListView(
        padding: const EdgeInsets.all(Space.lg),
        children: [
          Text(session.businessName, style: text.bodySmall),
          const SizedBox(height: Space.lg),
          for (final card in homeCardsFor(session)) ...[_HomeCardTile(card), const SizedBox(height: Space.md)],
        ],
      ),
    );
  }
}

class _HomeCardTile extends StatelessWidget {
  const _HomeCardTile(this.card);

  final HomeCard card;

  @override
  Widget build(BuildContext context) {
    final (icon, title, subtitle) = switch (card) {
      HomeCard.approvals => (Icons.fact_check_outlined, 'Approvals', 'Orders, sales and entries waiting for you'),
      HomeCard.cash => (Icons.payments_outlined, 'Cash handovers', 'Count and confirm agents’ cash'),
      HomeCard.agent => (Icons.storefront_outlined, 'My shops', 'Due today, collected today, cash to hand over'),
      HomeCard.godown => (Icons.local_shipping_outlined, 'Godown', 'To dispatch, arrivals and wastage today'),
      HomeCard.rates => (Icons.sell_outlined, 'Daily rates', 'Set today’s rates'),
    };
    final c = context.colors;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Space.lg),
        child: Row(
          children: [
            Icon(icon, color: c.brand, size: 28),
            const SizedBox(width: Space.lg),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: Space.xs),
                  Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
            Text('Soon', style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
      ),
    );
  }
}
