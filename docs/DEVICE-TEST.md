# Device test: M1–M3 on the iPhone

Planned 2026-11-07, to run on the iPhone against the local backend. M1 slices A–D already ran on the moto g04s; everything else here has only passed widget and unit tests. Tick each box and note anything odd in "Findings" at the bottom.

## 1. Setup

**Backend (computer, same Wi-Fi as the phone)**

- [ ] `docker compose up -d` in `green-ledger`, then `make -C backend-go migrate seed` if the DB is fresh.
- [ ] Find the computer's LAN IP (e.g. `192.168.1.20`). In `backend-go/.env` set `S3_PUBLIC_ENDPOINT=http://<LAN-IP>:9010` so receipt PDFs open on the phone (signed links otherwise point at `localhost`).
- [ ] Start the API (`make -C backend-go dev`, :3000) and the PDF worker (`cd backend-go && go run ./cmd/worker`).
- [ ] From the phone's Safari, `http://<LAN-IP>:3000/api/v1/health` (or any API URL) answers: the firewall lets port 3000 through.

**App (Mac with Xcode, iPhone with developer mode on)**

- [ ] `env/dev.json` → `"API_BASE_URL": "http://<LAN-IP>:3000"` (don't commit it).
- [ ] Signing team set on the `Runner` target in Xcode (personal team is enough for a debug build).
- [ ] `fvm flutter run -t lib/main_dev.dart --dart-define-from-file=env/dev.json` (no `--flavor` on iOS yet).
- [ ] First launch: allow **Local Network** when iOS asks (`Info.plist` has `NSLocalNetworkUsageDescription` and `NSAllowsLocalNetworking`).

**Data:** seed logins, password `Demo@12345`: owner `9000000001`, manager `9000000002`, agent `9000000005`. Use a second phone or the admin panel (`pnpm dev:frontend`) for the other side of handovers and approvals. Note the shop's due before you start; every posting below is real (cancel, don't delete).

## 2. M1 agent collections (agent login)

- [ ] **Shops:** list grouped by area, search by name/area/phone; shop detail shows due, overdue, credit left, last visit; Call and WhatsApp open the right apps.
- [ ] **Collect, acceptance step 5:** COLLECT → ₹5,000 cash + ₹3,000 UPI → Check shows the bills settled and due after → SAVE → "Saved R-…" → SHARE ON WHATSAPP opens the share sheet with the PDF.
- [ ] **Not yet run anywhere:** cheque payment (number, bank, date), UPI screenshot from Photos, choosing between two UPI accounts (add a second one in the admin panel).
- [ ] **Visit note:** VISIT → Promised → This week (shows the coming Saturday) → note → SAVE → "Visit saved"; the shop's last visit updates. Also Shop closed with no date.
- [ ] **Drafts, the M1 "Done when":** airplane mode on → collect ₹500 → SAVE → "No internet. Your entry is kept." → ⏳ 1 in the top bar → back out → airplane mode off → ⏳ → SEND AGAIN → "Saved R-…". In the admin panel, the receipt exists **once**, dated the day it was made.
- [ ] Same for a visit note and (M2) an order kept offline.
- [ ] Draft with a UPI screenshot: offline save, then kill the app, reopen, SEND AGAIN: the screenshot is attached to the receipt.
- [ ] **Shops offline:** airplane mode → Shops tab → list shows with "Updated 10:42 am".
- [ ] Sign in as another user on the same phone: the agent's drafts are not shown.

## 3. M1 owner/manager

- [ ] **Change allocation:** owner → a shop with two open bills → COLLECT an amount → Check → Change → 0 on the older bill, Full on the newer → DONE → SAVE. Admin panel: the receipt settled the newer bill. Agent login: no Change link.

## 4. M2 cash (acceptance step 6)

- [ ] Agent: Cash tab shows "Cash in bag ₹5,000" and today's cash receipts → **HAND OVER ₹5,000** → "Sent · waiting for the manager"; the button is gone.
- [ ] Manager: Home → Cash handovers → Faisal's ₹5,000 → Counted 5000 → CONFIRM → listed under Counted as Confirmed. Agent's bag is ₹0.
- [ ] Mismatch: another handover counted ₹200 less → "₹200 short" in red for the manager before CONFIRM, and on the agent's Cash tab afterwards.

## 5. M2 orders and approvals (acceptance step 9)

- [ ] Agent → shop → ORDER: Recent chips, Repeat last order (copies lines at today's rates), product search.
- [ ] Line sheet: the rate is text (not editable) for the agent; a bag product estimates kg from the last order; a crate shows "= 100 kg"; a product with no daily rate says "No rate … ask the owner".
- [ ] Note chips + text; Check says "Final amount after weighing" and "Needs approval: over limit by ₹…" for a shop near its limit → SEND → "Waiting for approval".
- [ ] Owner: Approvals tab (and the Home card) shows the order card with "Over credit limit by ₹… (due ₹… / limit ₹…)" → APPROVE → card gone, "Approved".
- [ ] Reject path: another order → REJECT → the sheet's REJECT stays disabled until a chip or text → reject; admin panel shows the note.
- [ ] Owner taking an order: the rate is editable; below the minimum shows the amber note.

## 6. M3 godown (godown login `9000000004`; nothing here may show a ₹ amount)

- [ ] Home: To dispatch, Arrivals today, Low stock, Wastage today; RECEIVE · DISPATCH · WASTAGE · RETURNS open their screens. Stock tab: "340 kg (7 Bag)", Low stock filter.
- [ ] **Receive, acceptance step 1:** RECEIVE → Kerala Agro → Add item → Onion, Bag, Packs 10, Net 500, grade A → NEXT → "No slip photo — add one?" → Add photo (camera) → Check → SAVE → "Saved GRN-…". Stock tab +500 kg; admin shows the slip photo. A crate product fills Net from the packs; Gross/tare gives net = gross − tare.
- [ ] **Dispatch:** an order from section 5 (approved) → DISPATCH → Orders tab (by agent) and Load list → open it → enter packs/net, leave one line empty → Check: a short line shows Send rest later / Close – no more (Close selected) → DISPATCH → "Dispatched · Bill … created". Admin: the bill uses the dispatched weight (D4); the closed/open choice matches.
- [ ] **Wastage, acceptance step 7:** WASTAGE → Tomato → 10 on the numpad → Rotten → Photo → NEXT → SAVE → "Saved W-…". A large quantity (above the owner's threshold) → "Sent for approval" and appears in the owner's Approvals tab.
- [ ] **Returns:** record a return in the admin panel → RETURNS → the return → Saleable on one line, leave the other → SAVE; only the saleable line adds stock; the other stays in the list.
- [ ] Offline: one receipt (with slip photo) and one dispatch in airplane mode → ⏳ → SEND AGAIN once online; each posts once.

## 7. General

- [ ] Light and dark mode; text size at the largest setting (capped at 130%) doesn't cut off the Check and Saved screens.
- [ ] Keyboard never hides the main button on the line sheet, Counted field or note fields.
- [ ] Expired subscription (set it in the platform console): banner shows; COLLECT, ORDER, VISIT are hidden.

## Findings

| Step | What happened | Fix / issue |
| --- | --- | --- |
| | | |
