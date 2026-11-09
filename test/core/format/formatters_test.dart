import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/format/units.dart';

void main() {
  group('formatMoney', () {
    test('Indian grouping, paise only when present', () {
      expect(formatMoney(12450000), '₹1,24,500');
      expect(formatMoney(124050), '₹1,240.50');
      expect(formatMoney(800000), '₹8,000');
      expect(formatMoney(5), '₹0.05');
      expect(formatMoney(-500000), '-₹5,000');
      expect(formatMoney(1000000000), '₹1,00,00,000');
    });
  });

  group('formatQuantity', () {
    test('3 decimals, trailing zeros dropped', () {
      expect(formatQuantity('248.500', 'kg'), '248.5 kg');
      expect(formatQuantity('25.000', 'pcs'), '25 pcs');
      expect(formatQuantity('1.125'), '1.125');
      expect(formatQuantity('0.004'), '0.004');
      expect(formatQuantity('-0.250'), '-0.25');
      expect(formatQuantity('-2.250'), '-2.25');
    });

    test('packs and weight together', () {
      expect(formatPacks(packCount: '3.000', packName: 'bags', quantity: '152.500', unit: 'kg'), '3 bags = 152.5 kg');
    });
  });

  group('milli-units', () {
    test('round-trip like common/units.ts', () {
      expect(toMilli('152.5'), 152500);
      expect(toMilli('-0.250'), -250);
      expect(fromMilli(152500), '152.500');
      expect(fromMilli(-250), '-0.250');
      expect(() => toMilli('1.2345'), throwsFormatException);
    });
  });

  group('dates', () {
    final now = DateTime.utc(2026, 10, 24, 6); // 11:30 am in India
    test('relative, this year, older', () {
      expect(formatDate('2026-10-24', now: now), 'Today');
      expect(formatDate('2026-10-23', now: now), 'Yesterday');
      expect(formatDate('2026-10-19', now: now), 'Mon 19 Oct');
      expect(formatDate('2025-10-24', now: now), '24 Oct 2025');
    });

    test('Indian business date and time', () {
      // 20:00 UTC is already the next day in India.
      expect(indianToday(DateTime.utc(2026, 10, 24, 20)), DateTime.utc(2026, 10, 25));
      expect(formatTime(DateTime.utc(2026, 10, 24, 5, 12)), '10:42 am');
    });

    test('ISO dates and "Updated" for copies kept on the phone', () {
      expect(isoDate(DateTime.utc(2026, 1, 5)), '2026-01-05');
      expect(updatedText(DateTime.utc(2026, 10, 24, 5, 12), now: now), 'Updated 10:42 am');
      expect(updatedText(DateTime.utc(2026, 10, 23, 5, 12), now: now), 'Updated Yesterday, 10:42 am');
    });
  });

  test('amounts are typed in rupees with up to 2 decimals', () {
    expect(parseRupees(''), 0);
    expect(parseRupees('1,240.5'), 124050);
    expect(parseRupees('3000'), 300000);
    expect(parseRupees('12.345'), isNull);
    expect(parseRupees('abc'), isNull);
    expect(paiseToText(124050), '1240.50');
    expect(paiseToText(300000), '3000');
    expect(paiseToText(0), '');
  });
}
