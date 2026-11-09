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

## 6b. M4 owner (owner login `9000000001`)

- [ ] First open after updating: asked to set a PIN (type twice), then offered fingerprint / Face ID; YES asks for a scan.
- [ ] Kill and reopen: the PIN (or the scan) is asked. Background under 5 min: not asked; over 5 min: asked.
- [ ] 5 wrong PINs: signed out, password needed, then a new PIN is asked. "Forgot PIN?" does the same.
- [ ] Home: Today figures match the admin dashboard; approvals / handovers counts open their screens; Agents today lists Faisal with collected, visits and cash in bag.
- [ ] SALE → Customers picker → Take order; COLLECT → picker → Collect; after saving, the Customers tab is a plain list again.
- [ ] Customers → a shop → share statement (Last month) opens the share sheet with a PDF.
- [ ] RATES: Copy yesterday's rates, change one, SAVE n RATES; the admin's daily rates match.
- [ ] 🔔: an agent's below-minimum order shows on the owner's bell; tapping it opens Approvals and the count drops.
- [ ] More → Theme → Dark switches at once and stays after a restart.
- [ ] 🔍: "mal" finds Malabar Traders (opens its page); "B-0" lists bills with a share button.

## 6c. M5 account

- [ ] More → Help & support lists only the contacts set in the server `.env`; Call and WhatsApp open the dialer / chat; the app version shows.
- [ ] Agent: More → Delete account → reason → REQUEST DELETION → confirm: "Request sent". The owner's bell shows it and the admin Users page has the red badge; deactivating the agent signs the phone out.

## 6d. Report a mistake (agent login, then owner)

- [ ] Agent: shop detail → ⋯ on own posted bill → Report a mistake → Wrong amount → SEND: "Reported". Bills by others and cancelled bills have no ⋯; Other needs a note.
- [ ] Owner: the bell shows it; the tap opens Approvals; admin Approvals → Mistakes → close with a note.
- [ ] Agent: the bell's `mistake_closed` opens More → My reports: Closed with the office's note.

## 7. General

- [ ] Light and dark mode; text size at the largest setting (capped at 130%) doesn't cut off the Check and Saved screens.
- [ ] Keyboard never hides the main button on the line sheet, Counted field or note fields.
- [ ] Expired subscription (set it in the platform console): banner shows; COLLECT, ORDER, VISIT are hidden.

## Findings

| Step | What happened | Fix / issue |
| --- | --- | --- |
| Run 2026-11-07 | iOS Simulator (iPhone 16, iOS 26.3), not the iPhone: device signing blocked (team PLA not accepted). No camera, no airplane mode (API stopped instead), Face ID not enrolled, hardware keyboard. | Repeat on the iPhone once signing works |
| 2 Collect / Home | Agent Home stays at ₹0 after a collection and on tab switch; only pull-to-refresh updates it. Order screen's "Credit left" also stale (₹45,000 after R-0002 made it ₹45,500). | Fixed 2026-11-07: `core/network/data_changes.dart` (fired after every successful save, on tab switch and on resume; Home, Shops, shop detail and Cash reload). Checked: owner COLLECT ₹100 → Home tab shows ₹8,600 without a pull |
| 2 Collect | Total / Due after and the UPI card's extra fields sit under the keypad until you scroll. | UX |
| 2 Visit | "Choose when they will pay" shows in red as soon as Promised is picked. | UX: show only on SAVE |
| 6b Owner/manager Home | COLLECT button label wraps to "COLLEC / T" (three buttons per row at 393 pt). | Fixed 2026-11-07: smaller side padding, labels scale down instead of wrapping (`owner_home_card.dart`); checked on the simulator |
| 6 Dispatch | Check says "50 kg was left" for a 48 kg dispatch of 50 kg ordered; reads as if 50 kg remain. | Copy |
| 6 Dispatch (D4) | ORD-0001 2 Crate @ ₹625/Crate, 48 kg dispatched → B-0003 ₹1,250 (packs × rate), quantity 48 kg. | Question: should a pack-rated line be billed by dispatched weight? |
| 5 Orders | ORD-0002/0003 got numbers while `pending_approval`; ORD-0002 rejected keeps its number. HANDOFF says pending orders have no number. | Question: doc or code (`internal/sales/orders.go:157`)? |
| Receipt PDF | "AMOUNT" header left-aligned, values right-aligned. | Cosmetic (server template) |
| Notifications | "Cash handover: ₹5,500.00" (paise) vs ₹5,500 elsewhere. | Cosmetic (server text) |
| Passed | Login, PIN set, agent Home (after refresh), Shops, shop detail, Collect cash+UPI → R-0001 settles oldest first, receipt PDF + share sheet, visit Promised "This week" = Sun 8 Nov on a Saturday, draft offline → ⏳ 1 → SEND AGAIN posts once (R-0002), Cash bag ₹5,500 → handover → manager counts ₹5,300 → "₹200 short", agent order at locked quote rate (ORD-0001), over-limit approval card + reject (chip required) + approve, report a mistake (Other needs a note) → owner/manager bell → Approvals, Help & support contacts + version, godown Home (no ₹), dispatch with Close – no more → B-0003 by the agent. | |
| 6c Delete account | Deactivating a signed-in agent left the app on stale data: every call 401, the refresh 401 too, never signed out. `/auth/refresh` went through the same Dio as the `QueuedInterceptor`, so a refused refresh waited on itself (deadlock); a successful one never hit the error queue. | Fixed 2026-11-07: refresh uses `ApiClient.refreshAuth` (no interceptor); regression test through the real client in `auth_interceptor_test.dart` (times out on the old wiring). Checked: deactivate → "You were signed out. Sign in again." |
| 6 Receive / Wastage | Photo buttons open the camera only (no Photos choice); the simulator has no camera, so slip and wastage photo upload is untested. | Run on the iPhone |
| 6 Wastage | Numpad slides up over half the Photo button once a digit is typed. | UX (same as Collect) |
| 6 Wastage approval | Owner's card reads "Wastage · Biju (Godown) → Wastage ₹250" without product or quantity. | UX: show "Tomato 10 kg · Rotten" |
| 6 Stock | Pack count in brackets is the sum of pack movements: "250 kg (10 Bag)", "−298 kg (−2 Crate)" after loose-kg sales. | Question: derive from kg ÷ pack size, or hide when mixed? |
| 7 Expired | Owner sees "Contact the owner." | Copy: owner/manager wording ("Renew in …" / contact support) |
| Search | iOS autocorrect is on in the search field ("mal" + space → "map"). | Turn off autocorrect/suggestions on search fields |
| Tabs | A tab left from a Saved screen (without Done) reopens on that Saved screen. | Minor |
| Passed (2nd run) | Rates (copy, edit, SAVE 6 RATES = server), statement share Last month (PDF correct), search "mal" / "B-0", theme Dark kept after restart, PIN after restart, 5 wrong PINs → sign-in ("1 try left" on the 4th), Agents today, Receive → GRN-0001 (stock +500), wastage → approval → owner APPROVE (stock −10), return inspection (only saleable line adds stock; other line stays), godown offline dispatch (SEND AGAIN ×2 → one bill B-0004, order partly dispatched), godown Home reloads by itself, mistake closed → agent bell → My reports Closed with note, delete account request → owner notified + Users list, deactivating closes the request, expired subscription banner + COLLECT/ORDER/VISIT hidden, largest text (130%) on Home and Check. | |
| Not run | Slip/wastage/UPI photos (no camera), Face ID, Call/WhatsApp, real offline (airplane mode), background > 5 min lock. | iPhone run |
