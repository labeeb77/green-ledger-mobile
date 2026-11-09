import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/amount_text.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/core/widgets/status_chip.dart';
import 'package:green_ledger_mobile/features/mistakes/domain/mistakes.dart';

/// My reports (More): the agent's mistake reports, open or closed by the office.
class MyReportsPage extends StatefulWidget {
  const MyReportsPage({super.key});

  @override
  State<MyReportsPage> createState() => _MyReportsPageState();
}

class _MyReportsPageState extends State<MyReportsPage> {
  late Future<Result<List<MistakeReport>>> _reports = context.read<MistakesRepository>().mine();

  Future<void> _reload() async {
    final next = context.read<MistakesRepository>().mine();
    setState(() => _reports = next);
    await next;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('My reports')),
    body: FutureBuilder(
      future: _reports,
      builder: (context, snapshot) => switch (snapshot.data) {
        null => const SkeletonList(),
        Err(:final failure) => ListView(
          padding: const EdgeInsets.all(Space.lg),
          children: [
            FailureMessage(failure),
            const SizedBox(height: Space.md),
            OutlinedButton(onPressed: _reload, child: const Text('TRY AGAIN')),
          ],
        ),
        Ok(value: final reports) when reports.isEmpty => const EmptyState(
          message: 'No reports. Use ⋯ on a bill or payment to report a mistake.',
          icon: Icons.flag_outlined,
        ),
        Ok(value: final reports) => RefreshIndicator(
          onRefresh: _reload,
          child: ListView.separated(
            padding: const EdgeInsets.all(Space.lg),
            itemCount: reports.length,
            separatorBuilder: (_, _) => const Divider(),
            itemBuilder: (_, i) => _ReportRow(reports[i]),
          ),
        ),
      },
    ),
  );
}

class _ReportRow extends StatelessWidget {
  const _ReportRow(this.report);

  final MistakeReport report;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final muted = TextStyle(fontSize: 14, color: c.muted);
    final reason = report.reason?.label ?? 'Other';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Space.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '${report.number} · ${report.shopName}',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              AmountText(report.total, tone: report.entryCancelled ? AmountTone.cancelled : AmountTone.normal),
            ],
          ),
          const SizedBox(height: Space.xs),
          Row(
            children: [
              Expanded(child: Text('$reason · ${formatDate(isoDate(indianToday(report.createdAt)))}', style: muted)),
              StatusChip(report.open ? EntryStatus.waiting : EntryStatus.paid, label: report.open ? 'Open' : 'Closed'),
            ],
          ),
          if (report.note case final note?) Text(note, style: muted),
          if (report.closeNote case final note?)
            Padding(
              padding: const EdgeInsets.only(top: Space.xs),
              child: Text('Office: $note'),
            ),
        ],
      ),
    );
  }
}
