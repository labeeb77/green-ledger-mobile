import 'package:green_ledger_mobile/core/format/units.dart';
import 'package:intl/intl.dart';

/// Display formats from ux-design section 8.

/// `₹1,24,500`, with paise only when present (`₹1,240.50`). [paise] is integer paise.
String formatMoney(int paise) {
  final sign = paise < 0 ? '-' : '';
  final abs = paise.abs();
  final rupees = _indianGrouping((abs ~/ 100).toString());
  final rest = abs % 100;
  return rest == 0 ? '$sign₹$rupees' : '$sign₹$rupees.${rest.toString().padLeft(2, '0')}';
}

/// 1,24,500: the last three digits, then groups of two.
String _indianGrouping(String digits) {
  if (digits.length <= 3) return digits;
  var head = digits.substring(0, digits.length - 3);
  final tail = digits.substring(digits.length - 3);
  final groups = <String>[];
  while (head.length > 2) {
    groups.insert(0, head.substring(head.length - 2));
    head = head.substring(0, head.length - 2);
  }
  return [head, ...groups, tail].join(',');
}

/// `248.5 kg`, `48.125 kg`: the API's 3 decimals with trailing zeros dropped, so screen figures
/// add up to the bill. [quantity] is the API's 3-decimal string.
String formatQuantity(String quantity, [String? unit]) {
  final value = toMilli(quantity);
  final whole = value.abs() ~/ 1000;
  final fraction = (value.abs() % 1000).toString().padLeft(3, '0').replaceFirst(RegExp(r'0+$'), '');
  final number = '${value < 0 ? '-' : ''}$whole${fraction.isEmpty ? '' : '.$fraction'}';
  return unit == null ? number : '$number $unit';
}

/// `3 bags = 152.5 kg` wherever both a pack count and a quantity apply.
String formatPacks({
  required String packCount,
  required String packName,
  required String quantity,
  required String unit,
}) => '${formatQuantity(packCount)} $packName = ${formatQuantity(quantity, unit)}';

/// Today in India (business dates are Indian dates), as a date-only value.
DateTime indianToday([DateTime? now]) {
  final india = (now ?? DateTime.now()).toUtc().add(const Duration(hours: 5, minutes: 30));
  return DateTime.utc(india.year, india.month, india.day);
}

/// `2026-11-07`, the date-only string the API takes.
String isoDate(DateTime date) =>
    '${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';

/// `Today`, `Yesterday`, `Mon 24 Oct` (this year) or `24 Oct 2025`. [date] is an ISO
/// date (`2026-10-24`), as the API sends business dates.
String formatDate(String date, {DateTime? now}) {
  final day = DateTime.parse('${date}T00:00:00Z');
  final today = indianToday(now);
  final diff = today.difference(day).inDays;
  if (diff == 0) return 'Today';
  if (diff == 1) return 'Yesterday';
  if (day.year == today.year) return DateFormat('EEE d MMM').format(day);
  return DateFormat('d MMM y').format(day);
}

/// `10:42 am`, in Indian time.
String formatTime(DateTime instant) {
  final india = instant.toUtc().add(const Duration(hours: 5, minutes: 30));
  return DateFormat('h:mm a').format(india).toLowerCase();
}

/// `Updated 10:42 am` for a copy kept on the phone; `Updated Yesterday, 10:42 am` from an
/// earlier day.
String updatedText(DateTime at, {DateTime? now}) {
  final day = indianToday(at);
  final time = formatTime(at);
  return day == indianToday(now) ? 'Updated $time' : 'Updated ${formatDate(isoDate(day), now: now)}, $time';
}

/// Rupees typed with up to 2 decimals → paise (`'1240.5'` → 124050, empty → 0); null
/// when it isn't an amount.
int? parseRupees(String text) {
  final t = text.trim().replaceAll(',', '');
  if (t.isEmpty) return 0;
  final match = RegExp(r'^(\d+)(?:\.(\d{0,2}))?$').firstMatch(t);
  if (match == null) return null;
  return int.parse(match[1]!) * 100 + int.parse((match[2] ?? '').padRight(2, '0'));
}

/// Paise → the text an amount field starts with (`124050` → `'1240.50'`, 0 → empty).
String paiseToText(int paise) => paise == 0
    ? ''
    : (paise % 100 == 0 ? '${paise ~/ 100}' : '${paise ~/ 100}.${(paise % 100).toString().padLeft(2, '0')}');
