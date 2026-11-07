import 'package:green_ledger_mobile/core/result.dart';

/// A customer or product found by name.
class SearchHit {
  const SearchHit({required this.id, required this.name, this.detail});

  final String id;
  final String name;

  /// Area · phone for customers, the Malayalam name for products.
  final String? detail;
}

enum SearchDocKind {
  salesBill('Bill'),
  receipt('Receipt'),
  purchaseBill('Supplier bill'),
  goodsReceipt('Goods receipt'),
  customerReturn('Return'),
  order('Order');

  SearchDocKind(this.label);

  final String label;
}

/// A document whose number starts with the search text.
class SearchDoc {
  const SearchDoc({
    required this.id,
    required this.kind,
    required this.number,
    required this.date,
    required this.party,
  });

  final String id;
  final SearchDocKind kind;
  final String number;

  /// `2026-11-07`.
  final String date;
  final String party;
}

/// What the user may see, already scoped by the server (agents: own shops only).
class SearchResults {
  const SearchResults({this.customers = const [], this.products = const [], this.documents = const []});

  final List<SearchHit> customers;
  final List<SearchHit> products;

  /// Exact numbers first, then the most recent (at most 8).
  final List<SearchDoc> documents;

  bool get isEmpty => customers.isEmpty && products.isEmpty && documents.isEmpty;
}

abstract interface class SearchRepository {
  Future<Result<SearchResults>> search(String text);
}
