# Wholesale Manager — mobile

The Flutter app (Android 9+, iOS 15+) for agents, the godown and owners/managers of Wholesale Manager, a multi-tenant ERP for Kerala vegetable wholesalers. It talks to the REST API in [`green-ledger`](../green-ledger) (backend + admin panel).

- [Setup](docs/SETUP.md) — fvm, flavours, running against the local backend, code generation
- [Architecture](docs/ARCHITECTURE.md) — BLoC + go_router, feature-first clean architecture, session, saving rules
- [Design system](docs/DESIGN-SYSTEM.md) — colours, type, spacing, components
- [Roadmap](docs/ROADMAP.md) — milestones and backend gaps

```sh
fvm flutter pub get
fvm flutter run --flavor dev -t lib/main_dev.dart --dart-define-from-file=env/dev.json
```
