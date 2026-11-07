import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/share/share_service.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/documents/presentation/share_pdf_button.dart';

/// A statement period offered on the share sheet.
typedef StatementPeriod = ({String label, String from, String to});

/// This month so far, last month, and the last three months (this one included).
List<StatementPeriod> statementPeriods(DateTime today) {
  final monthStart = DateTime.utc(today.year, today.month);
  final lastMonthStart = DateTime.utc(today.year, today.month - 1);
  return [
    (label: 'This month', from: isoDate(monthStart), to: isoDate(today)),
    (label: 'Last month', from: isoDate(lastMonthStart), to: isoDate(monthStart.subtract(const Duration(days: 1)))),
    (label: 'Last 3 months', from: isoDate(DateTime.utc(today.year, today.month - 2)), to: isoDate(today)),
  ];
}

/// Shares a customer's statement PDF (owner/manager Customers tab), after picking a period.
class ShareStatementButton extends StatelessWidget {
  const ShareStatementButton({
    required this.customerId,
    required this.name,
    this.share = const ShareService(),
    this.now,
    super.key,
  });

  final String customerId;
  final String name;
  final ShareService share;
  final DateTime? now;

  Future<StatementPeriod?> _pick(BuildContext context) => showModalBottomSheet<StatementPeriod>(
    context: context,
    builder: (context) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Space.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(Space.lg, 0, Space.lg, Space.sm),
              child: Text('Share statement', style: Theme.of(context).textTheme.titleMedium),
            ),
            for (final period in statementPeriods(indianToday(now)))
              ListTile(
                title: Text(period.label),
                subtitle: Text('${formatDate(period.from, now: now)} – ${formatDate(period.to, now: now)}'),
                onTap: () => Navigator.of(context).pop(period),
              ),
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => SharePdfButton<StatementPeriod>(
    tooltip: 'Share statement',
    text: 'Statement · $name',
    share: share,
    choose: _pick,
    pdf: (context, period) =>
        context.read<DocumentsRepository>().customerStatementPdf(customerId, from: period!.from, to: period.to),
  );
}
