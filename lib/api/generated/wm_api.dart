// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';

import 'clients/health_client.dart';
import 'clients/activity_log_client.dart';
import 'clients/approvals_client.dart';
import 'clients/auth_client.dart';
import 'clients/platform_auth_client.dart';
import 'clients/users_client.dart';
import 'clients/platform_client.dart';
import 'clients/settings_client.dart';
import 'clients/products_client.dart';
import 'clients/pricing_client.dart';
import 'clients/customers_client.dart';
import 'clients/suppliers_client.dart';
import 'clients/purchases_client.dart';
import 'clients/stock_client.dart';
import 'clients/sales_client.dart';
import 'clients/collections_client.dart';
import 'clients/orders_client.dart';
import 'clients/money_accounts_client.dart';
import 'clients/expense_categories_client.dart';
import 'clients/expenses_client.dart';
import 'clients/reports_client.dart';
import 'clients/notifications_client.dart';
import 'clients/documents_client.dart';
import 'clients/files_client.dart';
import 'clients/imports_client.dart';

/// Wholesale Manager API `v1.0`.
///
/// REST API for the admin panel, platform console and (future) mobile app.
///
/// - Authenticate with `Authorization: Bearer <accessToken>`.
/// - Every POST needs an `Idempotency-Key` header with a client-generated UUID.
/// - Money is integer paise. Weights are decimal strings with 3 places.
/// - Errors: `{ "error": { "code", "message", "details"?, "requestId" } }`.
class WmApi {
  WmApi(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0';

  HealthClient? _health;
  ActivityLogClient? _activityLog;
  ApprovalsClient? _approvals;
  AuthClient? _auth;
  PlatformAuthClient? _platformAuth;
  UsersClient? _users;
  PlatformClient? _platform;
  SettingsClient? _settings;
  ProductsClient? _products;
  PricingClient? _pricing;
  CustomersClient? _customers;
  SuppliersClient? _suppliers;
  PurchasesClient? _purchases;
  StockClient? _stock;
  SalesClient? _sales;
  CollectionsClient? _collections;
  OrdersClient? _orders;
  MoneyAccountsClient? _moneyAccounts;
  ExpenseCategoriesClient? _expenseCategories;
  ExpensesClient? _expenses;
  ReportsClient? _reports;
  NotificationsClient? _notifications;
  DocumentsClient? _documents;
  FilesClient? _files;
  ImportsClient? _imports;

  HealthClient get health => _health ??= HealthClient(_dio, baseUrl: _baseUrl);

  ActivityLogClient get activityLog => _activityLog ??= ActivityLogClient(_dio, baseUrl: _baseUrl);

  ApprovalsClient get approvals => _approvals ??= ApprovalsClient(_dio, baseUrl: _baseUrl);

  AuthClient get auth => _auth ??= AuthClient(_dio, baseUrl: _baseUrl);

  PlatformAuthClient get platformAuth => _platformAuth ??= PlatformAuthClient(_dio, baseUrl: _baseUrl);

  UsersClient get users => _users ??= UsersClient(_dio, baseUrl: _baseUrl);

  PlatformClient get platform => _platform ??= PlatformClient(_dio, baseUrl: _baseUrl);

  SettingsClient get settings => _settings ??= SettingsClient(_dio, baseUrl: _baseUrl);

  ProductsClient get products => _products ??= ProductsClient(_dio, baseUrl: _baseUrl);

  PricingClient get pricing => _pricing ??= PricingClient(_dio, baseUrl: _baseUrl);

  CustomersClient get customers => _customers ??= CustomersClient(_dio, baseUrl: _baseUrl);

  SuppliersClient get suppliers => _suppliers ??= SuppliersClient(_dio, baseUrl: _baseUrl);

  PurchasesClient get purchases => _purchases ??= PurchasesClient(_dio, baseUrl: _baseUrl);

  StockClient get stock => _stock ??= StockClient(_dio, baseUrl: _baseUrl);

  SalesClient get sales => _sales ??= SalesClient(_dio, baseUrl: _baseUrl);

  CollectionsClient get collections => _collections ??= CollectionsClient(_dio, baseUrl: _baseUrl);

  OrdersClient get orders => _orders ??= OrdersClient(_dio, baseUrl: _baseUrl);

  MoneyAccountsClient get moneyAccounts => _moneyAccounts ??= MoneyAccountsClient(_dio, baseUrl: _baseUrl);

  ExpenseCategoriesClient get expenseCategories => _expenseCategories ??= ExpenseCategoriesClient(_dio, baseUrl: _baseUrl);

  ExpensesClient get expenses => _expenses ??= ExpensesClient(_dio, baseUrl: _baseUrl);

  ReportsClient get reports => _reports ??= ReportsClient(_dio, baseUrl: _baseUrl);

  NotificationsClient get notifications => _notifications ??= NotificationsClient(_dio, baseUrl: _baseUrl);

  DocumentsClient get documents => _documents ??= DocumentsClient(_dio, baseUrl: _baseUrl);

  FilesClient get files => _files ??= FilesClient(_dio, baseUrl: _baseUrl);

  ImportsClient get imports => _imports ??= ImportsClient(_dio, baseUrl: _baseUrl);
}
