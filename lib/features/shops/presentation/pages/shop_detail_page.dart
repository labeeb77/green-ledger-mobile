import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/launch/contact_launcher.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/main_button.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/core/widgets/status_chip.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/shops/presentation/bloc/shop_detail_cubit.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/last_visit_text.dart';
import 'package:green_ledger_mobile/features/shops/presentation/widgets/share_receipt_button.dart';

/// A shop (ux-design 4.1 ①): due, overdue, credit left, last visit, call and WhatsApp,
/// then recent bills and payments.
class ShopDetailPage extends StatelessWidget {
  const ShopDetailPage({required this.shopId, this.launcher = const ContactLauncher(), super.key});

  final String shopId;
  final ContactLauncher launcher;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) {
      final cubit = ShopDetailCubit(context.read<ShopsRepository>(), shopId);
      unawaited(cubit.load());
      return cubit;
    },
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
          bottomNavigationBar: _canCollect(context)
              ? BottomActionBar(
                  child: MainButton(
                    label: 'COLLECT',
                    onPressed: () async {
                      final cubit = context.read<ShopDetailCubit>();
                      final saved = await context.push<bool>(
                        '/shops/${shop.id}/collect',
                        extra: CollectTarget(customerId: shop.id, name: shop.name, due: shop.outstanding),
                      );
                      if (saved ?? false) await cubit.load();
                    },
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
  );
}

/// Collect is for users who may record collections while entries aren't paused.
bool _canCollect(BuildContext context) => switch (context.read<AuthBloc>().state) {
  AuthSignedIn(:final session) => session.permissions.canWrite('collections') && !session.readOnly,
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
        : ShareReceiptButton(
            receiptId: payment.id,
            text: 'Receipt ${payment.number} · ${formatMoney(payment.total)} · $shopName',
          ),
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
