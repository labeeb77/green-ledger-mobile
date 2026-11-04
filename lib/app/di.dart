import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:green_ledger_mobile/app/flavor.dart';
import 'package:green_ledger_mobile/core/network/api_client.dart';
import 'package:green_ledger_mobile/core/network/token_store.dart';
import 'package:green_ledger_mobile/core/storage/secure_store.dart';
import 'package:green_ledger_mobile/features/auth/data/auth_repository_impl.dart';
import 'package:green_ledger_mobile/features/auth/domain/auth_repository.dart';

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

  getIt
    ..registerSingleton(config)
    ..registerSingleton(secure)
    ..registerSingleton(tokens)
    ..registerSingleton(client)
    ..registerSingleton(Connectivity())
    ..registerSingleton<AuthRepository>(auth);
}
