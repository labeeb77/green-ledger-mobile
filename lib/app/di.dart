import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:green_ledger_mobile/app/flavor.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/local/local_database.dart';
import 'package:green_ledger_mobile/core/local/local_stores.dart';
import 'package:green_ledger_mobile/core/network/api_client.dart';
import 'package:green_ledger_mobile/core/network/data_changes.dart';
import 'package:green_ledger_mobile/core/network/token_store.dart';
import 'package:green_ledger_mobile/core/storage/secure_store.dart';
import 'package:green_ledger_mobile/core/theme/theme_cubit.dart';
import 'package:green_ledger_mobile/features/account/data/account_repository_impl.dart';
import 'package:green_ledger_mobile/features/account/domain/account.dart';
import 'package:green_ledger_mobile/features/approvals/data/approvals_repository_impl.dart';
import 'package:green_ledger_mobile/features/approvals/domain/approval.dart';
import 'package:green_ledger_mobile/features/auth/data/auth_repository_impl.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/cash/data/cash_repository_impl.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:green_ledger_mobile/features/collect/data/collect_repository_impl.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/dispatch/data/dispatch_repository_impl.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';
import 'package:green_ledger_mobile/features/documents/data/documents_repository_impl.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/home/data/home_repository_impl.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/lock/data/pin_store_impl.dart';
import 'package:green_ledger_mobile/features/lock/domain/pin.dart';
import 'package:green_ledger_mobile/features/mistakes/data/mistakes_repository_impl.dart';
import 'package:green_ledger_mobile/features/mistakes/domain/mistakes.dart';
import 'package:green_ledger_mobile/features/notifications/data/notifications_repository_impl.dart';
import 'package:green_ledger_mobile/features/notifications/domain/notifications.dart';
import 'package:green_ledger_mobile/features/orders/data/orders_repository_impl.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:green_ledger_mobile/features/rates/data/rates_repository_impl.dart';
import 'package:green_ledger_mobile/features/rates/domain/rates.dart';
import 'package:green_ledger_mobile/features/receive/data/receive_repository_impl.dart';
import 'package:green_ledger_mobile/features/receive/domain/receive.dart';
import 'package:green_ledger_mobile/features/returns/data/returns_repository_impl.dart';
import 'package:green_ledger_mobile/features/returns/domain/returns.dart';
import 'package:green_ledger_mobile/features/search/data/search_repository_impl.dart';
import 'package:green_ledger_mobile/features/search/domain/search.dart';
import 'package:green_ledger_mobile/features/shops/data/shops_repository_impl.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/stock/data/stock_repository_impl.dart';
import 'package:green_ledger_mobile/features/stock/domain/stock.dart';
import 'package:green_ledger_mobile/features/visits/data/visit_repository_impl.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';
import 'package:green_ledger_mobile/features/wastage/data/wastage_repository_impl.dart';
import 'package:green_ledger_mobile/features/wastage/domain/wastage.dart';

final GetIt getIt = GetIt.instance;

/// Registers the app's singletons. Widgets get repositories through
/// `RepositoryProvider`s in `App` (from here), never from get_it directly.
void configureDependencies(FlavorConfig config) {
  final secure = SecureStore();
  final tokens = TokenStore(secure);
  late final AuthRepositoryImpl auth;
  final changes = DataChanges();
  final client = ApiClient(
    baseUrl: config.apiBaseUrl,
    tokens: tokens,
    refresh: () => auth.refresh(),
    onSessionExpired: () => auth.expire(),
    changes: changes,
  );
  auth = AuthRepositoryImpl(client: client.api.auth, refreshClient: client.refreshAuth, tokens: tokens, secure: secure);
  final db = LocalDatabase.open();
  final user = CurrentUser();
  final drafts = LocalDraftStore(db, user);
  final collect = CollectRepositoryImpl(
    collections: client.api.collections,
    accounts: client.api.moneyAccounts,
    files: client.api.files,
    drafts: drafts,
  );
  final visits = VisitRepositoryImpl(client.api.visitNotes, drafts);
  final receive = ReceiveRepositoryImpl(
    purchases: client.api.purchases,
    suppliers: client.api.suppliers,
    products: client.api.products,
    files: client.api.files,
    drafts: drafts,
  );
  final dispatch = DispatchRepositoryImpl(orders: client.api.orders, products: client.api.products, drafts: drafts);
  final wastage = WastageRepositoryImpl(
    stock: client.api.stock,
    products: client.api.products,
    files: client.api.files,
    drafts: drafts,
  );
  final returns = ReturnsRepositoryImpl(client.api.sales, drafts);
  final orders = OrdersRepositoryImpl(
    orders: client.api.orders,
    products: client.api.products,
    pricing: client.api.pricing,
    drafts: drafts,
  );

  getIt
    ..registerSingleton(config)
    ..registerSingleton(secure)
    ..registerSingleton(tokens)
    ..registerSingleton(client)
    ..registerSingleton(changes)
    ..registerSingleton(Connectivity())
    ..registerSingleton<AuthRepository>(auth)
    ..registerSingleton(user)
    ..registerSingleton<DraftStore>(drafts)
    ..registerSingleton<Map<DraftKind, DraftSender>>({
      DraftKind.receipt: collect.sendDraft,
      DraftKind.visit: visits.sendDraft,
      DraftKind.order: orders.sendDraft,
      DraftKind.goodsReceipt: receive.sendDraft,
      DraftKind.dispatch: dispatch.sendDraft,
      DraftKind.wastage: wastage.sendDraft,
      DraftKind.inspection: returns.sendDraft,
    })
    ..registerSingleton<CollectRepository>(collect)
    ..registerSingleton<ApprovalsRepository>(ApprovalsRepositoryImpl(client.api.approvals))
    ..registerSingleton<CashRepository>(CashRepositoryImpl(client.api.collections))
    ..registerSingleton<DocumentsRepository>(DocumentsRepositoryImpl(client: client.api.documents))
    ..registerSingleton<HomeRepository>(
      HomeRepositoryImpl(
        client.api.home,
        reports: client.api.reports,
        approvals: client.api.approvals,
        collections: client.api.collections,
      ),
    )
    ..registerSingleton<ShopsRepository>(
      ShopsRepositoryImpl(
        customers: client.api.customers,
        sales: client.api.sales,
        collections: client.api.collections,
        cache: ReadCache(db, user),
      ),
    )
    ..registerSingleton<DispatchRepository>(dispatch)
    ..registerSingleton<OrdersRepository>(orders)
    ..registerSingleton<ThemeStore>(secure)
    ..registerSingleton<AccountRepository>(AccountRepositoryImpl(client.api.account))
    ..registerSingleton<MistakesRepository>(MistakesRepositoryImpl(client.api.mistakeReports))
    ..registerSingleton<NotificationsRepository>(NotificationsRepositoryImpl(client.api.notifications))
    ..registerSingleton<PinStore>(SecurePinStore())
    ..registerSingleton<Biometrics>(LocalBiometrics())
    ..registerSingleton<RatesRepository>(RatesRepositoryImpl(client.api.pricing))
    ..registerSingleton<ReceiveRepository>(receive)
    ..registerSingleton<ReturnsRepository>(returns)
    ..registerSingleton<SearchRepository>(SearchRepositoryImpl(client.api.reports))
    ..registerSingleton<StockRepository>(StockRepositoryImpl(client.api.stock))
    ..registerSingleton<VisitRepository>(visits)
    ..registerSingleton<WastageRepository>(wastage);
}
