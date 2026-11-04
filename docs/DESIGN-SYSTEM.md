# Design system

The Flutter version of `green-ledger/docs/mobile/ux-design.md` section 6. Same name, font and colours as the admin panel (`green-ledger/frontend/src/index.css`): **Wholesale Manager**, IBM Plex Sans, brand green. Code: `lib/core/theme/` and `lib/core/widgets/`.

## Principles (from ux-design section 2)

1. One main action per screen: a full-width 56 dp button at the bottom (`MainButton` in a `BottomActionBar`).
2. Numbers are typed on the app numpad (`AppNumpad`), never the phone keyboard.
3. Pick, don't type: chips for reasons, grades, methods and outcomes; recent items first.
4. Every save goes through a Check screen in plain words.
5. Every state has a word **and** a colour (`StatusChip`), never colour alone.
6. Plain words: Collect, Due, Paid, Waiting, Cancelled. Never "allocate", "post" or error codes.
7. At most 4 bottom tabs and 4 Home actions; the rest goes under More.
8. Screens show only what permissions allow; the godown never sees prices.

## Colours (`AppColors`, a `ThemeExtension`)

Read them with `context.colors`. The Material `ColorScheme` is derived from the same tokens.

| Token | Light | Dark | Use |
| --- | --- | --- | --- |
| `brand` | `#2F7D55` brand-600 | `#9BD59F` accent | Main buttons, active tab, icons |
| `brandStrong` | `#1F5138` brand-800 | `#E3F1E8` brand-100 | Headings, links |
| `surface` | `#F8FAFC` slate-50 | `#0F2A1C` brand-950 | Screen background |
| `card` | `#FFFFFF` | `#173D2A` brand-900 | Cards, sheets, inputs, bottom bar |
| `text` | `#0F172A` slate-900 | `#F1F5F9` | Body text |
| `muted` | `#64748B` slate-500 | `#94A3B8` | Secondary text, hints |
| `border` | `#E2E8F0` slate-200 | `#1F5138` brand-800 | Card and input borders, dividers |
| `due` / `dueBackground` | `#B91C1C` / `#FEF2F2` | `#FCA5A5` / `#450A0A` | Money owed, overdue, errors |
| `paid` / `paidBackground` | `#15803D` / `#F0FDF4` | `#86EFAC` / `#052E16` | Paid, saved, confirmed |
| `pending` / `pendingBackground` | `#92400E` / `#FFFBEB` | `#FCD34D` / `#451A03` | Waiting for approval or sync |
| `cancelled` | `#64748B`, struck through | `#94A3B8` | Cancelled entries |

- Light and dark follow the phone setting (a manual switch in Profile comes with M4). Light is the default outdoors.
- Contrast: at least 7:1 for amounts, 4.5:1 for everything else. Check new colour pairs before using them.
- Status backgrounds in dark mode are the 950 shades so the 300 text keeps its contrast.

## Type

IBM Plex Sans (400, 500, 600, 700), with Noto Sans Malayalam as the fallback for names and notes. Both are bundled in `assets/fonts/` (OFL), so text renders offline and Malayalam conjuncts are correct.

| Role | Style | Size |
| --- | --- | --- |
| Totals | `headlineSmall` / `AmountText(large: true)` | 28 sp bold |
| Amounts in lists | `AmountText` | 20 sp bold, tabular figures |
| Screen titles | `titleLarge` | 20 sp semibold |
| Body | `bodyLarge` / `bodyMedium` | 16 sp |
| Labels, secondary | `bodySmall`, `labelMedium` | 14 sp |
| Support codes | `labelSmall` | 12 sp (only for codes, never for content) |

The system text size is followed up to **130%** (`maxTextScale`, applied in `App`).

## Spacing and touch

- 4 dp grid: `Space.xs 4`, `sm 8`, `md 12`, `lg 16` (screen padding), `xl 24`, `xxl 32`. 12 dp between cards.
- `Touch.target 48` (minimum, 8 dp apart), `Touch.mainButton 56`, `Touch.numpadKey 64`.
- Corners: 12 dp for cards, inputs and buttons; chips fully rounded.

## Components

| Widget | Use |
| --- | --- |
| `MainButton` | The screen's main action; uppercase label, spinner while loading, light haptic on tap |
| `BottomActionBar` | Pins the main button above the safe area |
| `AppNumpad` + `applyNumpadKey` | Digits, `.`, ⌫ and NEXT; `decimals: 0` hides `.` (packs, whole-rupee amounts), `3` for weights |
| `StatusChip` | ✓ Paid · Due · ⏳ Waiting · ✕ Rejected · — Cancelled (icon + word + colour) |
| `AmountText` | `₹1,24,500`; tones due/paid/cancelled (struck through); `approximate` adds "≈" for orders before weighing |
| `FailureMessage` | Error in plain words with the support code underneath |
| `EmptyState` | One friendly line plus the main action |
| `SkeletonList` | Loading rows; static when the phone asks for reduced motion |
| `TopBanner` | "No internet", "Subscription expired — entries are paused" |
| `TopBar` | Title + search on every tab screen |

Planned with the features that need them: `CheckScreen` (M1), `SavedScreen` with Share (M1), `ChipGroup` (M1), `CustomerPicker`/`ProductPicker` (M1–M2), `PendingBadge` (M1).

## Formats (`lib/core/format/formatters.dart`)

- Money: `₹1,24,500`; paise only when present (`₹1,240.50`); never "Rs" or "INR".
- Quantities: at most 2 decimals, trailing zeros dropped (`248.5 kg`); `3 bags = 152.5 kg` wherever both apply.
- Dates: `Today`, `Yesterday`, `Mon 24 Oct` (this year), `24 Oct 2025` (older); times `10:42 am`; all in Indian time.
- Document numbers exactly as the server sends them (`B-0012`); pending documents show "Waiting".

## Better UX on top of ux-design

- Haptics: light impact on the main action, selection click on numpad keys; a heavier one on errors (with the feature that adds the error screens).
- Pull-to-refresh on every list; "Updated 10:42" under cached data.
- Sticky totals above the main button on entry screens (Collect, Order, Receive).
- Fields advance on NEXT; the first field is focused when a screen opens.
- Reduced motion respected (skeletons stop animating).
- Destructive actions confirm in a bottom sheet (thumb reach), not a centred dialog.
- Every icon has a text label or tooltip, and status chips have semantic labels for screen readers.
