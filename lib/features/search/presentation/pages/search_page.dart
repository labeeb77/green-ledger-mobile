import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/documents/presentation/share_pdf_button.dart';
import 'package:green_ledger_mobile/features/home/presentation/home_tabs.dart';
import 'package:green_ledger_mobile/features/search/domain/search.dart';
import 'package:green_ledger_mobile/features/search/presentation/bloc/search_cubit.dart';

/// Global search from the top bar (ux-design section 3): customers, bill and receipt
/// numbers (most recent first) and products, as far as the user may see them.
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocProvider(create: (context) => SearchCubit(context.read<SearchRepository>()), child: const _SearchView());
}

class _SearchView extends StatelessWidget {
  const _SearchView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchCubit>();
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: TextField(
          autofocus: true,
          autocorrect: false,
          enableSuggestions: false,
          maxLength: SearchCubit.maxLength,
          textInputAction: TextInputAction.search,
          decoration: const InputDecoration(
            hintText: 'Customer, bill number or product',
            border: InputBorder.none,
            counterText: '',
          ),
          onChanged: cubit.changed,
        ),
      ),
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) => switch (state) {
          SearchIdle() => const _Hint('Type at least 2 letters or a bill number, e.g. B-0042'),
          SearchLoading() => const SkeletonList(rows: 4),
          SearchFailed(:final failure) => ListView(
            padding: const EdgeInsets.all(Space.lg),
            children: [
              FailureMessage(failure),
              const SizedBox(height: Space.md),
              OutlinedButton(onPressed: cubit.retry, child: const Text('TRY AGAIN')),
            ],
          ),
          SearchDone(:final text, :final results) when results.isEmpty => _Hint('Nothing found for “$text”'),
          SearchDone(:final results) => _Results(results),
        },
      ),
    );
  }
}

class _Hint extends StatelessWidget {
  const _Hint(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(Space.lg),
    child: Text(text, style: TextStyle(color: context.colors.muted)),
  );
}

class _Results extends StatelessWidget {
  const _Results(this.results);

  final SearchResults results;

  /// Customers open in the tab the user has: Shops (agents) or Customers.
  String? _customerBase(BuildContext context) {
    final auth = context.read<AuthBloc>().state;
    if (auth is! AuthSignedIn) return null;
    final tabs = tabsFor(auth.session);
    if (tabs.contains(AppTab.shops)) return AppTab.shops.path;
    if (tabs.contains(AppTab.customers)) return AppTab.customers.path;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final base = _customerBase(context);
    final muted = TextStyle(fontSize: 14, color: context.colors.muted);
    return ListView(
      padding: const EdgeInsets.only(bottom: Space.xl),
      children: [
        if (results.customers.isNotEmpty) ...[
          const _Section('Customers'),
          for (final c in results.customers)
            ListTile(
              leading: const Icon(Icons.storefront_outlined),
              title: Text(c.name),
              subtitle: c.detail == null ? null : Text(c.detail!, style: muted),
              trailing: base == null ? null : const Icon(Icons.chevron_right),
              onTap: base == null ? null : () => context.go('$base/${c.id}'),
            ),
        ],
        if (results.documents.isNotEmpty) ...[
          const _Section('Bills and receipts'),
          for (final d in results.documents)
            ListTile(
              leading: const Icon(Icons.receipt_long_outlined),
              title: Text('${d.kind.label} ${d.number}'),
              subtitle: Text('${d.party} · ${formatDate(d.date)}', style: muted),
              trailing: switch (d.kind) {
                SearchDocKind.salesBill => SharePdfButton<Never>(
                  pdf: (context, _) => context.read<DocumentsRepository>().billPdf(d.id),
                  text: 'Bill ${d.number}',
                ),
                SearchDocKind.receipt => SharePdfButton<Never>(
                  pdf: (context, _) => context.read<DocumentsRepository>().receiptPdf(d.id),
                  text: 'Receipt ${d.number}',
                ),
                _ => null,
              },
            ),
        ],
        if (results.products.isNotEmpty) ...[
          const _Section('Products'),
          for (final p in results.products)
            ListTile(
              leading: const Icon(Icons.eco_outlined),
              title: Text(p.name),
              subtitle: p.detail == null ? null : Text(p.detail!, style: muted),
            ),
        ],
      ],
    );
  }
}

class _Section extends StatelessWidget {
  const _Section(this.title);

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(Space.lg, Space.lg, Space.lg, Space.xs),
    child: Text(title, style: Theme.of(context).textTheme.titleSmall?.copyWith(color: context.colors.muted)),
  );
}
