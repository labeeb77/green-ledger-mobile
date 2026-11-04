/// Quantities are 3-decimal strings in the API (`numeric(12,3)` in Postgres). Maths is
/// done in integer thousandths ("milli-units") so it is exact, as in the backend's
/// `common/units.ts`.
const milli = 1000;

final _quantity = RegExp(r'^-?\d+(\.\d{1,3})?$');

int toMilli(String value) {
  final text = value.trim();
  if (!_quantity.hasMatch(text)) {
    throw FormatException('Invalid quantity', value);
  }
  final negative = text.startsWith('-');
  final parts = text.replaceFirst('-', '').split('.');
  final fraction = parts.length > 1 ? parts[1].padRight(3, '0') : '000';
  final result = int.parse(parts[0]) * milli + int.parse(fraction);
  return negative ? -result : result;
}

String fromMilli(int value) {
  final sign = value < 0 ? '-' : '';
  final abs = value.abs();
  return '$sign${abs ~/ milli}.${(abs % milli).toString().padLeft(3, '0')}';
}
