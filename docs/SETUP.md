# Setup

## Requirements

- [fvm](https://fvm.app) — the Flutter version is pinned in `.fvmrc` (3.47.2). Run every command as `fvm flutter …` / `fvm dart …`.
- Android Studio (SDK, an emulator with Android 9+) and JDK 17; Xcode for iOS (iOS 15+).
- The backend checked out next to this repo as `../green-ledger` (only needed to run against it and to refresh the API contract).

```sh
fvm install            # installs the pinned Flutter
fvm flutter pub get
fvm flutter test
```

## Flavours

| Flavour | Entry point | App id suffix | App name | API |
| --- | --- | --- | --- | --- |
| dev | `lib/main_dev.dart` (also `lib/main.dart`) | `.dev` | WM Dev | `env/dev.json`, plain HTTP allowed |
| staging | `lib/main_staging.dart` | `.staging` | WM Staging | `env/staging.json`, HTTPS only |
| prod | `lib/main_prod.dart` | — | Wholesale Manager | `env/prod.json`, HTTPS only |

`env/<flavor>.json` holds `API_BASE_URL`: the server origin **without** `/api/v1` (the generated client adds it). Staging and prod URLs are placeholders until the AWS deploy (`green-ledger/docs/deploy-aws.md`).

```sh
fvm flutter run --flavor dev -t lib/main_dev.dart --dart-define-from-file=env/dev.json
```

- Android flavours are in `android/app/build.gradle.kts` (`productFlavors`). `minSdk` is 28 (Android 9).
- **iOS:** only the default `Runner` scheme exists so far; run iOS with `-t lib/main_dev.dart --dart-define-from-file=env/dev.json` and no `--flavor`. Matching Xcode schemes and configurations (Debug-dev, Release-prod, …) with bundle id suffixes are a TODO before the first TestFlight build (ROADMAP M5).

## Running against the local backend

1. In `../green-ledger`: `docker compose up -d`, `make -C backend-go migrate seed`, then `make -C backend-go dev` (Go API on port 3000); add `cd backend-go && go run ./cmd/worker` for PDFs.
2. `env/dev.json` uses `http://10.0.2.2:3000`, the host machine as seen from the **Android emulator**. For the **iOS simulator** use `http://localhost:3000`; for a **real phone** use the computer's LAN IP (same Wi-Fi). Keep personal changes out of commits.
3. Seed logins (password `Demo@12345`): owner `9000000001`, manager `9000000002`, billing `9000000003`, godown `9000000004`, agent `9000000005`.

## Code generation

The API client in `lib/api/generated/` is generated from `api/openapi.json` and committed (CI fails when it is stale).

```sh
# 1. When the backend contract changed: copy it in (fixes boolean enums the generator can't express)
fvm dart run tool/sync_openapi.dart            # default source: ../green-ledger/backend-go/openapi.json
# 2. Generate the Retrofit clients and freezed models
fvm dart run swagger_parser
fvm dart run build_runner build -d
```

- Config: `swagger_parser.yaml` (freezed 3 syntax), `build.yaml` (freezed → json_serializable → retrofit order).
- Inline objects get numbered names (`Account5`, `CreatedBy8`); they never leave the data layer, so map them to domain entities there.
- On the backend side, an API change is exported with `make -C backend-go openapi`; then run step 1 here.

## Checks

```sh
fvm dart format lib/app lib/core lib/features lib/main*.dart test tool   # 120 columns
fvm flutter analyze        # very_good_analysis, generated code excluded
fvm flutter test
```

CI (`.github/workflows/ci.yml`) runs the same plus the generated-code check.

## Release builds (later)

- Android: a release keystore and `signingConfigs` replace the debug signing in `build.gradle.kts`; `fvm flutter build appbundle --flavor prod -t lib/main_prod.dart --dart-define-from-file=env/prod.json`.
- iOS: flavour schemes (see above), signing team, `fvm flutter build ipa …`.
- The application id is still the template's `com.example.green_ledger_mobile`; choose the real id before the first store upload (it can't change afterwards).
