import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/local/local_database.dart';
import 'package:green_ledger_mobile/core/local/local_stores.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/shops/data/shops_repository_impl.dart';
import 'package:green_ledger_mobile/features/shops/domain/shop.dart';
import 'package:mocktail/mocktail.dart';

class _MockCustomers extends Mock implements api.CustomersClient;

class _MockSales extends Mock implements api.SalesClient;

class _MockCollections extends Mock implements api.CollectionsClient;

final customer = api.CustomerDtoOutput.fromJson({
  'id': 'c1',
  'name': 'Malabar Traders',
  'phone': '+919847100001',
  'whatsapp': null,
  'area': 'Palayam',
  'address': null,
  'notes': null,
  'priceGroup': null,
  'creditLimit': 5000000,
  'creditDays': 7,
  'agent': null,
  'openingBalance': 0,
  'status': 'active',
  'outstanding': 1300000,
  'overdue': 500000,
  'lastVisit': {
    'visitDate': '2026-11-05',
    'outcome': 'not_available',
    'user': {'id': 'u1', 'name': 'Ravi'},
  },
  'createdAt': '2026-10-01T05:00:00.000Z',
});

void main() {
  late LocalDatabase db;
  late _MockCustomers customers;
  late ShopsRepositoryImpl repository;

  setUp(() {
    db = LocalDatabase(NativeDatabase.memory());
    customers = _MockCustomers();
    repository = ShopsRepositoryImpl(
      customers: customers,
      sales: _MockSales(),
      collections: _MockCollections(),
      cache: ReadCache(db, CurrentUser()..id = 'agent-1'),
    );
  });
  tearDown(() => db.close());

  void offline() =>
      when(() => customers.customersControllerList(status: any(named: 'status')))
          .thenThrow(DioException(requestOptions: RequestOptions(), type: DioExceptionType.connectionError));

  setUpAll(() => registerFallbackValue(api.Status2.active));

  test('offline: the last loaded list, with when it was loaded', () async {
    when(() => customers.customersControllerList(status: any(named: 'status'))).thenAnswer((_) async => [customer]);
    final fresh = (await repository.shops() as Ok<ShopList>).value;
    expect(fresh.updatedAt, isNull);

    offline();
    final kept = (await repository.shops() as Ok<ShopList>).value;
    expect(kept.updatedAt, isNotNull);
    expect(kept.shops.single.name, 'Malabar Traders');
    expect(kept.shops.single.overdue, 500000);
    expect(kept.shops.single.lastVisit?.date, '2026-11-05');
  });

  test('offline with nothing kept is a network failure', () async {
    offline();
    expect((await repository.shops() as Err).failure.kind, FailureKind.network);
  });
}
