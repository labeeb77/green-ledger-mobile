# Roadmap

Milestones for the Phase 1 mobile app (spec section 5, flows in `green-ledger/docs/mobile/ux-design.md` section 4). Each milestone ends with its tests green and a run against the local backend with the seed logins.

## Status

| Milestone | Status |
| --- | --- |
| M0 Foundation | In progress (code and tests done; device run pending) |
| M1 Agent collections | Not started |
| M2 Orders, approvals, cash | Not started |
| M3 Godown | Not started |
| M4 Owner, search, lock, push | Not started |
| M5 Store readiness | Not started |

## M0 Foundation

Project setup and the shell every feature plugs into.

- fvm-pinned Flutter, very_good_analysis, CI, Android flavours (dev/staging/prod).
- Generated API client from `api/openapi.json` (`tool/sync_openapi.dart`, swagger_parser, build_runner).
- Core: `Result`/`AppFailure`, Dio + `AuthInterceptor` (single-flight refresh), secure storage, permissions, connectivity, formatters, theme and design-system widgets, bundled fonts.
- Auth: sign in, forced password change, restore, sign out, "you were signed out" on a revoked session.
- Home shell: tabs and Home cards from permissions; More with profile and sign out; offline and read-only banners; billing → admin-panel notice.

**Done when:** analyze + tests green; on an emulator, agent `9000000005` sees Home · Shops · Cash · More, owner `9000000001` sees Home · Approvals · Customers · More, godown `9000000004` sees Home · Stock · More; a new staff login is forced to change its password; airplane mode shows "No internet".

## M1 Agent collections (ux-design 4.1)

- Shops tab: assigned shops grouped by area, due + **Overdue** badge (`GET /customers`, `GET /customers/areas`).
- Shop detail: due, overdue, credit left, recent bills and payments (`GET /customers/{id}`, `GET /customers/{id}/statement`).
- Collect: Cash and UPI rows always shown, + Bank, + Cheque; live total and "due after"; UPI reference and optional screenshot (`POST /files`); cheque number/bank/date.
- Check: bills settled oldest first (`GET /customer-receipts/allocation-preview`), "₹2,000 extra kept as advance"; owner/manager may change the allocation.
- Save (`POST /customer-receipts` with the action's idempotency key) → Saved ✓ R-0042 → **Share on WhatsApp** (receipt PDF via `POST /documents/pdf`, `GET /documents/pdf/{jobId}`; `share_plus`).
- Drafts: a save that fails for network is kept on the phone (Drift table: payload + idempotency key) with **SEND AGAIN**; top-bar ⏳ count; read cache for the shops list with "Updated 10:42".
- Shared widgets: `CheckScreen`, `SavedScreen`, `ChipGroup`, `CustomerPicker`, `PendingBadge`.

**Done when:** acceptance step 5 (collect ₹8,000 = ₹5,000 cash + ₹3,000 UPI) works on the phone and the receipt is shared; a save in airplane mode becomes a draft and posts once after SEND AGAIN.

## M2 Orders, approvals, cash (ux-design 4.2, 4.5, 4.6)

- Take order: product search with recent items, repeat last order, unit from shop history, rate auto-filled (`GET /pricing/quote`), "≈" amounts, note chips (`POST /orders`); "Waiting for approval ⏳" when over limit or below minimum.
- Approvals tab (owner/manager): cards with the reason and numbers; approve, or reject with a required note (`GET /approvals`, `POST /approvals/{id}/approve|reject`, `GET /approvals/count`, `GET /approvals/mine` for requesters).
- Cash: agent's bag and today's cash receipts, **HAND OVER** the full bag (`GET /cash-handovers/my-bag`, `POST /cash-handovers`); manager counts and confirms, mismatch shown in red (`GET /cash-handovers`, `POST /cash-handovers/{id}/confirm`).

**Done when:** acceptance steps 6 (handover ₹5,000) and 9 (order over limit waits; owner approves on the phone) pass.

## M3 Godown (ux-design 4.3, 4.4, 4.7)

- Receive goods: recent suppliers, packs + net kg, gross/tare folded away, grade chips, slip photo with one reminder (`POST /files`, `POST /goods-receipts`). No prices.
- Dispatch: Orders (by agent) and Load list tabs, per-line packs and net kg, "Send rest later / Close – no more" with Close preselected, optional vehicle (`GET /orders/to-dispatch`, `POST /dispatches`). No amounts.
- Wastage: product, numpad quantity, reason chips, photo; "Sent for approval ⏳" above the threshold (`POST /stock/wastage`).
- Stock: quantity by product as "340 kg (7 bags)", no cost (`GET /stock`).
- Return inspection: Saleable / Damaged / Disposed per line (`GET /customer-returns/to-inspect`, `POST /customer-returns/{id}/inspect`).

**Done when:** acceptance steps 1 (receive 10 bags, 500 kg) and 7 (10 kg wastage) pass on the phone; the godown never sees a price.

## M4 Owner, search, lock, push

- Dashboard for owner/manager (`GET /dashboard`); Customers tab with balance, statement and share (`GET /customers`, statement PDF).
- Daily rates with yesterday in grey and "Copy yesterday's rates" (`GET/PUT /pricing/daily-rates`).
- Global search in the top bar: customers, products, bill numbers, recent first (`GET /search`).
- PIN (4 digits) and fingerprint/Face ID after 5 minutes in the background and after a restart; full password after 5 wrong PINs (`local_auth`).
- Push via FCM: approvals, results, handover requests; tap opens the entry (`POST /push-tokens`; backend `FCM_*` env must be set). Notification inbox (`GET /notifications`).
- Theme switch in Profile; one-time "?" hints per flow.

**Done when:** acceptance steps 10–11 can be checked on the phone; an approval push opens the approval card.

## M5 Store readiness

- Final application id, app icon and store name (ux-design section 11 open question).
- iOS flavour schemes and signing; Android release keystore.
- Help & support (phone, WhatsApp link, app version) and **Delete account request** (store requirement).
- Crash reporting; release builds tested on a 2 GB Android 9 phone and iOS 15.

## Backend gaps

These screens need backend work first (in the Go API, `green-ledger/backend-go`; the Node backend was removed at the 2026-11-04 cut-over):

| Gap | Needed by |
| --- | --- |
| Visit notes (outcome, promise date) | M1 shop detail, Collect auto-visit, agent Home |
| Agent / godown Home summaries, "Agents today" | M1–M4 Home cards |
| Account deletion request, support contact | M5 |
| Shop WhatsApp number (if `phone` doesn't fit) | M1 share |
| Agent rate lock on the server (ux-design CR 3) | M2 take order |
| "Report a mistake" for agents (ux-design CR 2) | M2+ |

Until a gap is filled, the screen uses what the API has (e.g. Home cards built from `GET /dashboard` and list endpoints) and the missing part is left out rather than faked.

## Open decisions

- ux-design change requests 1–3 still need the owner's sign-off; the app is built online-first (CR 1) as agreed for this phase.
- Weight display: 2 decimals on screen vs 3 stored (ux-design section 11).
