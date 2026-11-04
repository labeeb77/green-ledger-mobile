import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/widgets/app_numpad.dart';

String type(String keys, {int decimals = 0}) {
  var value = '';
  for (final ch in keys.split('')) {
    final key = switch (ch) {
      '.' => const DecimalKey(),
      '<' => const BackspaceKey(),
      _ => DigitKey(int.parse(ch)),
    };
    value = applyNumpadKey(value, key, decimals: decimals);
  }
  return value;
}

void main() {
  test('whole numbers ignore the point', () {
    expect(type('8000'), '8000');
    expect(type('12.5'), '125');
  });

  test('decimals are capped', () {
    expect(type('152.5', decimals: 3), '152.5');
    expect(type('1.23456', decimals: 3), '1.234');
    expect(type('.5', decimals: 2), '0.5');
    expect(type('1..2', decimals: 2), '1.2');
  });

  test('leading zero and backspace', () {
    expect(type('05'), '5');
    expect(type('123<<'), '1');
    expect(type('<'), '');
  });
}
