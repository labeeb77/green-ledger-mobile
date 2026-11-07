import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/home/presentation/bloc/agent_home_cubit.dart';
import 'package:green_ledger_mobile/features/home/presentation/bloc/godown_home_cubit.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/agent_home_card.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/godown_home_card.dart';
import 'package:green_ledger_mobile/features/home/presentation/widgets/top_bar.dart';

/// Home is built from permission cards (ux-design section 3). Each milestone fills its
/// card with live figures; the rest are placeholders. Agents get their live card (M1).
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthBloc>().state;
    if (auth is! AuthSignedIn) return const SizedBox.shrink();
    final session = auth.session;
    final firstName = session.user.name.split(' ').first;
    final text = Theme.of(context).textTheme;
    final cards = homeCardsFor(session);
    final agent = session.user.role == Role.agent;
    final godown = cards.contains(HomeCard.godown);
    Future<void> refresh(BuildContext context) => Future.wait([
      if (agent) context.read<AgentHomeCubit>().load(),
      if (godown) context.read<GodownHomeCubit>().load(),
    ]);
    final scaffold = Scaffold(
      appBar: TopBar(title: 'Hi $firstName'),
      body: Builder(
        builder: (context) => RefreshIndicator(
          onRefresh: () => refresh(context),
          child: ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              Text(session.businessName, style: text.bodySmall),
              const SizedBox(height: Space.lg),
              for (final card in cards) ...[
                switch (card) {
                  HomeCard.agent when agent => const AgentHomeCard(),
                  HomeCard.godown => const GodownHomeCard(),
                  _ => _HomeCardTile(card),
                },
                const SizedBox(height: Space.md),
              ],
            ],
          ),
        ),
      ),
    );
    if (!agent && !godown) return scaffold;
    return MultiBlocProvider(
      providers: [
        if (agent)
          BlocProvider(
            create: (context) {
              final cubit = AgentHomeCubit(context.read<HomeRepository>());
              unawaited(cubit.load());
              return cubit;
            },
          ),
        if (godown)
          BlocProvider(
            create: (context) {
              final cubit = GodownHomeCubit(context.read<HomeRepository>());
              unawaited(cubit.load());
              return cubit;
            },
          ),
      ],
      child: scaffold,
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
    // Cards whose screen is built so far; the rest arrive with their milestone.
    final path = switch (card) {
      HomeCard.approvals => '/approvals',
      HomeCard.cash => '/home/handovers',
      _ => null,
    };
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: path == null ? null : () => unawaited(context.push(path)),
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
              if (path == null)
                Text('Soon', style: Theme.of(context).textTheme.labelSmall)
              else
                const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
