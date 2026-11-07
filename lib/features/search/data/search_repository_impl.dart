import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/search/domain/search.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._client);

  final api.ReportsClient _client;

  @override
  Future<Result<SearchResults>> search(String text) async {
    try {
      return Ok(searchResultsFromDto(await _client.reportsControllerSearch(q: text)));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

SearchResults searchResultsFromDto(api.SearchResultDtoOutput r) => SearchResults(
  customers: [for (final c in r.customers) SearchHit(id: c.id, name: c.name, detail: c.detail)],
  products: [for (final p in r.products) SearchHit(id: p.id, name: p.name, detail: p.detail)],
  documents: [
    for (final d in r.documents)
      SearchDoc(
        id: d.id,
        kind: switch (d.type) {
          api.Type4.salesBill => SearchDocKind.salesBill,
          api.Type4.receipt => SearchDocKind.receipt,
          api.Type4.purchaseBill => SearchDocKind.purchaseBill,
          api.Type4.goodsReceipt => SearchDocKind.goodsReceipt,
          api.Type4.customerReturn => SearchDocKind.customerReturn,
          api.Type4.order => SearchDocKind.order,
          _ => SearchDocKind.order,
        },
        number: d.number,
        date: d.date,
        party: d.party,
      ),
  ],
);
