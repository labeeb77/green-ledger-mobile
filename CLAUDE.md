# Wholesale Manager mobile: project rules

Flutter app for agents, the godown and owners/managers of the Wholesale Manager ERP (backend and admin panel live in `../green-ledger`). Status and next steps: `docs/ROADMAP.md`.

## Rules

- UX source of truth: `../green-ledger/docs/mobile/ux-design.md`; features and business rules: `../green-ledger/docs/phase-1-development-specification.md`. Read only the section the current feature needs. Ask before changing an agreed UX decision.
- Architecture and layer rules: `docs/ARCHITECTURE.md`. Colours, type and components: `docs/DESIGN-SYSTEM.md`. Follow them; don't add new patterns.
- No business rules on the phone beyond display: the server computes totals, allocations, approvals and permissions.
- Money is `int` paise; quantities are 3-decimal strings with milli-unit maths (`core/format/units.dart`). Never `double`.
- Every POST passes one idempotency key per user action, reused on retry.
- Hide what permissions don't allow; the godown never sees prices.
- Add or update tests with every feature.

## Commands

- Flutter is pinned with fvm (`.fvmrc`): always `fvm flutter …` / `fvm dart …`.
- Run: `fvm flutter run --flavor dev -t lib/main_dev.dart --dart-define-from-file=env/dev.json` (iOS: no `--flavor` yet).
- Checks: `fvm dart format lib/app lib/core lib/features lib/main*.dart test tool`, `fvm flutter analyze`, `fvm flutter test`.
- API change: `fvm dart run tool/sync_openapi.dart && fvm dart run swagger_parser && fvm dart run build_runner build -d` (commit `api/` and `lib/api/generated/`).
- Seed logins (password `Demo@12345`): owner `9000000001`, manager `…02`, billing `…03`, godown `…04`, agent `…05`.

## Conventions

- Feature folders: `lib/features/<feature>/{data,domain,presentation}`. Presentation never imports `lib/api` or another feature's data layer.
- Import the generated client with a prefix: `import 'package:green_ledger_mobile/api/generated/export.dart' as api;`. Never edit `lib/api/generated/`.
- Repositories return `Result<T>`; show failures with `FailureMessage`.
- Cubit for forms/screens, Bloc for event-driven state; states are sealed/final classes.
- Routes in `lib/app/router/`; redirect rules stay pure in `redirect.dart` and are unit tested.
- Colours via `context.colors`, spacing via `Space`, sizes via `Touch`; text from the theme.

## Workflow

- Targeted edits; don't paste file contents back into chat; short replies (what was done, what's next, decisions needed).
- For features touching 3+ files, show a brief plan and wait for approval.
- After a feature: run analyze and tests, update `docs/ROADMAP.md` (status, what's next), suggest a commit message.
