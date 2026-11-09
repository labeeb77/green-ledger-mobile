import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/launch/contact_launcher.dart';
import 'package:green_ledger_mobile/core/network/data_changes.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/core/widgets/status_chip.dart';
import 'package:green_ledger_mobile/features/auth/domain/session.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/mistakes/domain/mistakes.dart';
import 'package:green_ledger_mobile/features/mistakes/presentation/widgets/report_mistake_sheet.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/shops/presentation/bloc/shop_detail_cubit.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/last_visit_text.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/share_receipt_button.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/share_statement_button.dart';

/// A shop (ux-design 4.1 ①): due, overdue, credit left, last visit, call and WhatsApp,
/// then recent bills and payments.
class ShopDetailPage extends StatelessWidget {
  const ShopDetailPage({
    required this.shopId,
    this.basePath = '/shops',
    this.launcher = const ContactLauncher(),
    super.key,
  });

  final String shopId;

  /// `/shops` (agents) or `/customers` (owner, manager): the tab the flows open in.
  final String basePath;
  final ContactLauncher launcher;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = ShopDetailCubit(context.read<ShopsRepository>(), shopId);
      unawaited(cubit.load());
      return cubit;
    },
    child: ReloadOnDataChange(
      onChange: (context) => unawaited(context.read<ShopDetailCubit>().load()),
      child: BlocBuilder<ShopDetailCubit, ShopDetailState>(
        builder: (context, state) => switch (state) {
          ShopDetailLoading() => Scaffold(appBar: AppBar(), body: const SkeletonList()),
          ShopDetailFailed(:final failure) => Scaffold(
            appBar: AppBar(),
            body: ListView(
              padding: const EdgeInsets.all(Space.lg),
              children: [
                FailureMessage(failure),
                const SizedBox(height: Space.md),
                OutlinedButton(onPressed: context.read<ShopDetailCubit>().load, child: const Text('TRY AGAIN')),
              ],
            ),
          ),
          ShopDetailLoaded(:final shop, :final activity) => Scaffold(
            appBar: AppBar(
              title: Text(shop.name),
              actions: [
                // Statements are shared from the Customers tab (owner, manager).
                if (basePath != '/shops') ShareStatementButton(customerId: shop.id, name: shop.name),
                if (shop.phone case final phone?)
                  IconButton(
                    tooltip: 'Call',
                    icon: const Icon(Icons.call_outlined),
                    onPressed: () => unawaited(launcher.call(phone)),
                  ),
                if (shop.whatsappNumber case final number?)
                  IconButton(
                    tooltip: 'WhatsApp',
                    icon: const Icon(Icons.chat_outlined),
                    onPressed: () => unawaited(launcher.whatsApp(number)),
                  ),
              ],
            ),
            bottomNavigationBar: _canCollect(context) || _canVisit(context) || _canOrder(context)
                ? BottomActionBar(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_canCollect(context))
                          MainButton(
                            label: 'COLLECT',
                            onPressed: () => _open(
                              context,
                              '$basePath/${shop.id}/collect',
                              CollectTarget(customerId: shop.id, name: shop.name, due: shop.outstanding),
                            ),
                          ),
                        if (_canOrder(context) || _canVisit(context)) ...[
                          if (_canCollect(context)) const SizedBox(height: Space.sm),
                          Row(
                            children: [
                              if (_canOrder(context))
                                Expanded(
                                  child: _SecondaryButton(
                                    'ORDER',
                                    () => _open(
                                      context,
                                      '$basePath/${shop.id}/order',
                                      OrderTarget(
                                        customerId: shop.id,
                                        name: shop.name,
                                        outstanding: shop.outstanding,
                                        creditLimit: shop.creditLimit,
                                      ),
                                    ),
                                  ),
                                ),
                              if (_canOrder(context) && _canVisit(context)) const SizedBox(width: Space.sm),
                              if (_canVisit(context))
                                Expanded(
                                  child: _SecondaryButton(
                                    'VISIT',
                                    () => _open(context, '$basePath/${shop.id}/visit', shop.name),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  )
                : null,
            body: RefreshIndicator(
              onRefresh: context.read<ShopDetailCubit>().load,
              child: ListView(
                padding: const EdgeInsets.all(Space.lg),
                children: [
                  _Balances(shop),
                  const SizedBox(height: Space.xl),
                  const _SectionTitle('Bills'),
                  if (activity.bills.isEmpty) const _None('No bills yet'),
                  for (final bill in activity.bills) _BillRow(bill),
                  const SizedBox(height: Space.xl),
                  const _SectionTitle('Payments'),
                  if (activity.payments.isEmpty) const _None('No payments yet'),
                  for (final payment in activity.payments) _PaymentRow(payment, shopName: shop.name),
                ],
              ),
            ),
          ),
        },
      ),
    ),
  );
}

/// Opens a flow on the shop; a saved entry reloads the shop.
Future<void> _open(BuildContext context, String path, Object extra) async {
  final cubit = context.read<ShopDetailCubit>();
  final saved = await context.push<bool>(path, extra: extra);
  if (saved ?? false) await cubit.load();
}

class _SecondaryButton extends StatelessWidget {
  const _SecondaryButton(this.label, this.onPressed);

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => OutlinedButton(
    style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(Touch.mainButton)),
    onPressed: onPressed,
    child: Text(label),
  );
}

/// Orders are for users who may write sales (agents: their own shops).
bool _canOrder(BuildContext context) => switch (context.read<AuthBloc>().state) {
  AuthSignedIn(:final session) => session.permissions.canWrite('sales') && !session.readOnly,
  _ => false,
};

/// Collect is for users who may record collections while entries aren't paused.
bool _canCollect(BuildContext context) => switch (context.read<AuthBloc>().state) {
  AuthSignedIn(:final session) => session.permissions.canWrite('collections') && !session.readOnly,
  _ => false,
};

/// Visit notes are for users who may write `visits` (agents: their own shops).
bool _canVisit(BuildContext context) => switch (context.read<AuthBloc>().state) {
  AuthSignedIn(:final session) => session.permissions.canWrite('visits') && !session.readOnly,
  _ => false,
};

/// Agents report mistakes in their own entries (ux-design CR 2); the server checks again.
bool _canReport(BuildContext context, String? byId) => switch (context.read<AuthBloc>().state) {
  AuthSignedIn(:final session) => session.user.role == Role.agent && byId != null && byId == session.user.id,
  _ => false,
};

class _Balances extends StatelessWidget {
  const _Balances(this.shop);

  final Shop shop;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(Space.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Expanded(child: Text('Due')),
                AmountText(
                  shop.outstanding,
                  large: true,
                  tone: shop.outstanding > 0 ? AmountTone.due : AmountTone.normal,
                ),
              ],
            ),
            if (shop.overdue > 0) ...[
              const SizedBox(height: Space.sm),
              Row(
                children: [
                  const Expanded(child: Text('Overdue')),
                  AmountText(shop.overdue, tone: AmountTone.due),
                ],
              ),
            ],
            const SizedBox(height: Space.sm),
            Row(
              children: [
                const Expanded(child: Text('Credit left')),
                if (shop.cashOnly)
                  Text(
                    'Cash only',
                    style: TextStyle(fontWeight: FontWeight.w600, color: c.muted),
                  )
                else
                  AmountText(shop.creditLeft),
              ],
            ),
            const SizedBox(height: Space.md),
            Text(
              shop.lastVisit == null
                  ? lastVisitText(null)
                  : '${lastVisitText(shop.lastVisit)} · ${shop.lastVisit!.byName}',
              style: TextStyle(fontSize: 14, color: c.muted),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: Space.xs),
    child: Text(title, style: Theme.of(context).textTheme.titleMedium),
  );
}

class _None extends StatelessWidget {
  const _None(this.message);

  final String message;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: Space.sm),
    child: Text(message, style: TextStyle(color: context.colors.muted)),
  );
}

class _BillRow extends StatelessWidget {
  const _BillRow(this.bill);

  final ShopBill bill;

  @override
  Widget build(BuildContext context) {
    final (status, label) = switch (bill.state) {
      BillState.paid => (EntryStatus.paid, null),
      BillState.due => (EntryStatus.due, null),
      BillState.overdue => (EntryStatus.due, 'Overdue'),
      BillState.waiting => (EntryStatus.waiting, null),
      BillState.cancelled => (EntryStatus.cancelled, null),
    };
    final open = bill.state == BillState.due || bill.state == BillState.overdue;
    return _EntryRow(
      title: bill.number ?? 'Waiting',
      subtitle: open && bill.open != bill.total
          ? '${formatDate(bill.billDate)} · ${formatMoney(bill.open)} left'
          : formatDate(bill.billDate),
      amount: AmountText(
        bill.total,
        tone: bill.state == BillState.cancelled ? AmountTone.cancelled : AmountTone.normal,
      ),
      status: StatusChip(status, label: label),
      trailing: switch (bill.number) {
        final number?
            when bill.state != BillState.waiting &&
                bill.state != BillState.cancelled &&
                _canReport(context, bill.byId) =>
          _ReportMenu(MistakeTarget(entry: MistakeEntry.bill, id: bill.id, number: number, total: bill.total)),
        _ => null,
      },
    );
  }
}

class _PaymentRow extends StatelessWidget {
  const _PaymentRow(this.payment, {required this.shopName});

  final ShopPayment payment;
  final String shopName;

  @override
  Widget build(BuildContext context) => _EntryRow(
    title: payment.number,
    subtitle: formatDate(payment.date),
    amount: AmountText(payment.total, tone: payment.cancelled ? AmountTone.cancelled : AmountTone.paid),
    status: payment.cancelled ? const StatusChip(EntryStatus.cancelled) : null,
    trailing: payment.cancelled
        ? null
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ShareReceiptButton(
                receiptId: payment.id,
                text: 'Receipt ${payment.number} · ${formatMoney(payment.total)} · $shopName',
              ),
              if (_canReport(context, payment.byId))
                _ReportMenu(
                  MistakeTarget(
                    entry: MistakeEntry.receipt,
                    id: payment.id,
                    number: payment.number,
                    total: payment.total,
                  ),
                ),
            ],
          ),
  );
}

/// ⋯ on an agent's own posted entry: Report a mistake.
class _ReportMenu extends StatelessWidget {
  const _ReportMenu(this.target);

  final MistakeTarget target;

  @override
  Widget build(BuildContext context) => PopupMenuButton<void>(
    tooltip: 'More',
    icon: const Icon(Icons.more_vert),
    itemBuilder: (_) => [
      PopupMenuItem(
        onTap: () => unawaited(showReportMistakeSheet(context, target)),
        child: const Text('Report a mistake'),
      ),
    ],
  );
}

class _EntryRow extends StatelessWidget {
  const _EntryRow({required this.title, required this.subtitle, required this.amount, this.status, this.trailing});

  final String title;
  final String subtitle;
  final Widget amount;
  final Widget? status;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: Space.sm),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(subtitle, style: TextStyle(fontSize: 14, color: context.colors.muted)),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            amount,
            if (status case final s?) ...[const SizedBox(height: Space.xs), s],
          ],
        ),
        ?trailing,
      ],
    ),
  );
}
