# Architecture

The Wholesale Manager mobile app for agents, the godown and owners/managers (spec section 5). Flutter, one codebase for Android 9+ and iOS 15+, designed for 2 GB phones.

**Sources of truth**

| Topic | Where |
| --- | --- |
| Features and business rules | `green-ledger/docs/phase-1-development-specification.md` (sections 5, 7, 8) |
| Screens, flows, states, wording | `green-ledger/docs/mobile/ux-design.md` |
| API contract | `api/openapi.json`, copied from `green-ledger/backend/openapi.json` (see [SETUP.md](SETUP.md)) |
| Colours, type, components | [DESIGN-SYSTEM.md](DESIGN-SYSTEM.md) |
| What is built and what comes next | [ROADMAP.md](ROADMAP.md) |

## Decisions

| Topic | Decision | Why |
| --- | --- | --- |
| State | `flutter_bloc`: Cubit for forms and simple screens, Bloc when events matter (session) | Spec section 9; testable with `bloc_test` |
| Navigation | `go_router`, one `StatefulShellRoute` for the tabs, redirects from the session | Deep links from push notifications later; each tab keeps its stack |
| Structure | Feature-first, three layers per feature (data / domain / presentation), kept minimal | Features stay independent; no layer exists only for ceremony |
| API types | Generated from OpenAPI with `swagger_parser` (Retrofit + freezed), used only in the data layer | The backend contract is the source of truth; the generated code never leaks into UI |
| Network strategy | **Online-first.** Every save calls the API with an `Idempotency-Key`; a failed save is kept as a draft with **SEND AGAIN** (M1) | ux-design change request 1 (owner: online only this phase). Replaces the spec's Drift outbox |
| DI | `get_it`, registered by hand in `lib/app/di.dart`; widgets get repositories from `RepositoryProvider` | Small app, no code generation for DI |
| Errors | Repositories return `Result<T>` (`Ok` / `Err(AppFailure)`), never throw for expected errors | UI handles every outcome explicitly |

## Layout

```
lib/
  main.dart, main_dev.dart, main_staging.dart, main_prod.dart   entry points → bootstrap(flavor)
  app/
    bootstrap.dart        WidgetsBinding, DI, runApp
    flavor.dart           FlavorConfig (API_BASE_URL from --dart-define-from-file)
    di.dart               get_it registrations
    app.dart              MaterialApp.router, themes, global blocs, text scale cap
    router/               app_router.dart (routes), redirect.dart (pure redirect rules)
  core/
    result.dart           Result<T> = Ok | Err
    failure.dart          AppFailure: error envelope → plain-words message + support code
    network/              ApiClient (Dio + generated WmApi), AuthInterceptor, TokenStore
    storage/              SecureStore (refresh token, device id)
    permissions/          Permissions from /auth/me (canRead / canWrite / canSeePrices)
    connectivity/         ConnectivityCubit (offline banner)
    format/               money, quantity, date formatters; milli-unit maths
    theme/                AppColors (tokens), AppTheme, Space, Touch
    widgets/              design system (MainButton, AppNumpad, StatusChip, AmountText, states)
  features/<feature>/
    data/                 repository implementation, DTO → entity mappers (uses lib/api)
    domain/               entities, repository interface (+ use case only for real logic)
    presentation/         bloc/ (cubits, blocs), pages/, widgets/
  api/generated/          swagger_parser output — never edit by hand
tool/sync_openapi.dart    copies and fixes the backend contract into api/openapi.json
```

## Layer rules

- **presentation** depends on **domain** only (repository interfaces and entities). It never imports `lib/api` or a feature's `data/`.
- **domain** is plain Dart: no Flutter, Dio or generated types.
- **data** implements the domain interface with the generated client and maps DTOs to entities (`features/auth/data/session_mapper.dart` is the pattern). Import the generated code with a prefix: `import '…/api/generated/export.dart' as api;` (it has types such as `Platform` that clash with `dart:io`).
- Features don't import each other's `data/` or `presentation/`. Shared things go in `core/`; the session is read from `AuthBloc`.
- Use cases are added only when a feature has logic beyond one repository call (e.g. combining a quote and a credit check). A pass-through use case is not written.
- State classes are `sealed`/`final` classes (see `auth_bloc.dart`); add `copyWith` by hand when a form needs it.

## Session and auth

- `POST /auth/login` with `{phone, password, device: {id, platform}}`; the device id is a UUID created once per install (`SecureStore.deviceId`), so the owner can sign out a lost phone.
- The access token is kept in memory (`TokenStore`); the refresh token in the Keychain/Keystore. Mobile never sends `X-Client: web`, so the refresh token comes back in the body.
- `AuthInterceptor` (a `QueuedInterceptor`) adds the bearer token and, on a 401, refreshes once and retries. Requests failing together share one refresh. A refused refresh ends the session (`AuthSignedOut(expired: true)`); an offline refresh keeps it.
- `GET /auth/me` gives the user, business, subscription access and effective permissions → `Session`.
- `AuthBloc` states: `AuthUnknown` (splash) → `AuthSignedIn` | `AuthSignedOut` | `AuthRestoreFailed` (offline at start, retry). `redirectFor()` maps state + location to a route: temporary password → `/change-password`; billing → `/no-mobile-access`; tabs the user lacks → `/home`.

## Permissions

- Levels come from the backend matrix (`allow`, `approval`, `view`, `own`). `canRead(key)` = any level; `canWrite(key)` = any level except `view` (as `levelGrants` on the server).
- Tabs and Home cards come from permissions, not a fixed role (`features/home/presentation/home_tabs.dart`): agent → Home · Shops · Cash · More; owner/manager → Home · Approvals · Customers · More; godown → Home · Stock · More.
- `Permissions.canSeePrices` is false for the godown: no prices, rates or amounts on any godown screen.
- The server enforces everything; the app only hides what the user can't use.

## Saving entries (rules for every feature)

1. **Check screen before every save** (posted entries are never edited, D10).
2. **One idempotency key per user action.** Create it when the user starts the action (e.g. opens Collect), pass it to the generated client's required `idempotencyKey` parameter, and reuse it on every retry of that action. Generate a new one only after the server refused the request (it is final) or after success.
3. **Failed by network → draft** (M1): the entry and its key are kept on the phone; **SEND AGAIN** resends with the same key, so it never posts twice. Drafts count in the top-bar badge.
4. **Money is `int` paise.** Quantities are 3-decimal strings; do maths with `toMilli`/`fromMilli` (`core/format/units.dart`, same as the backend's `common/units.ts`). Never use `double` for money or weight.
5. The server computes totals, allocations and approvals; the app may preview (e.g. `allocation-preview`) but shows the server's result on the Saved screen.
6. Business dates are Indian dates (`indianToday()`); staff may backdate 2 days, the owner any date, never future (the server checks).

## Errors

The backend sends `{ "error": { "code", "message", "details"?, "requestId" } }` with messages written for users. `AppFailure.from()` keeps that message for 4xx, uses fixed wording for network and 5xx errors, and `FailureMessage` shows the code and request id in small text for support. Field errors (`details` from validation) map to form fields in the feature that needs them.

## Testing

- Pure logic (formatters, redirects, tab rules, numpad) → plain unit tests.
- Blocs/cubits → `bloc_test` with `mocktail` repositories.
- Network behaviour → Dio with a fake `HttpClientAdapter` (`test/core/network/auth_interceptor_test.dart`).
- Screens → widget tests with `MaterialApp(theme: AppTheme.light())` and mocked repositories.
- Every feature adds tests; CI runs analyze, format, tests and checks the generated client is committed.
