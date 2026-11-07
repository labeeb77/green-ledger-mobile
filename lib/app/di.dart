import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:green_ledger_mobile/app/flavor.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/local/local_database.dart';
import 'package:green_ledger_mobile/core/local/local_stores.dart';
import 'package:green_ledger_mobile/core/network/api_client.dart';
import 'package:green_ledger_mobile/core/network/token_store.dart';
import 'package:green_ledger_mobile/core/storage/secure_store.dart';
import 'package:green_ledger_mobile/features/approvals/data/approvals_repository_impl.dart';
import 'package:green_ledger_mobile/features/approvals/domain/approval.dart';
import 'package:green_ledger_mobile/features/auth/data/auth_repository_impl.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';
import 'package:green_ledger_mobile/features/cash/data/cash_repository_impl.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:green_ledger_mobile/features/collect/data/collect_repository_impl.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/documents/data/documents_repository_impl.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/home/data/home_repository_impl.dart';
import 'package:green_ledger_mobile/features/home/domain/agent_home.dart';
import 'package:green_ledger_mobile/features/shops/data/shops_repository_impl.dart';
import 'package:green_ledger_mobile/features/shops/domain/shops_repository.dart';
import 'package:green_ledger_mobile/features/visits/data/visit_repository_impl.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';

final GetIt getIt = GetIt.instance;

/// Registers the app's singletons. Widgets get repositories through
/// `RepositoryProvider`s in `App` (from here), never from get_it directly.
void configureDependencies(FlavorConfig config) {
  final secure = SecureStore();
  final tokens = TokenStore(secure);
  late final AuthRepositoryImpl auth;
  final client = ApiClient(
    baseUrl: config.apiBaseUrl,
    tokens: tokens,
    refresh: () => auth.refresh(),
    onSessionExpired: () => auth.expire(),
  );
  auth = AuthRepositoryImpl(client: client.api.auth, tokens: tokens, secure: secure);
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

  getIt
    ..registerSingleton(config)
    ..registerSingleton(secure)
    ..registerSingleton(tokens)
    ..registerSingleton(client)
    ..registerSingleton(Connectivity())
    ..registerSingleton<AuthRepository>(auth)
    ..registerSingleton(user)
    ..registerSingleton<DraftStore>(drafts)
    ..registerSingleton<Map<DraftKind, DraftSender>>({
      DraftKind.receipt: collect.sendDraft,
      DraftKind.visit: visits.sendDraft,
    })
    ..registerSingleton<CollectRepository>(collect)
    ..registerSingleton<ApprovalsRepository>(ApprovalsRepositoryImpl(client.api.approvals))
    ..registerSingleton<CashRepository>(CashRepositoryImpl(client.api.collections))
    ..registerSingleton<DocumentsRepository>(DocumentsRepositoryImpl(client: client.api.documents))
    ..registerSingleton<HomeRepository>(HomeRepositoryImpl(client.api.home))
    ..registerSingleton<ShopsRepository>(
      ShopsRepositoryImpl(
        customers: client.api.customers,
        sales: client.api.sales,
        collections: client.api.collections,
        cache: ReadCache(db, user),
      ),
    )
    ..registerSingleton<VisitRepository>(visits);
}
