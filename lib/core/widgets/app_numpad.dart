import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';

/// A key of the [AppNumpad]: a digit, the decimal point or backspace.
sealed class NumpadKey {
  const NumpadKey();
}

final class DigitKey extends NumpadKey {
  const DigitKey(this.digit);
  final int digit;
}

final class DecimalKey extends NumpadKey {
  const DecimalKey();
}

final class BackspaceKey extends NumpadKey {
  const BackspaceKey();
}

/// Applies [key] to [value]. [decimals] is how many places are allowed after the point
/// (0 = whole numbers: packs, and amounts unless "Add paise"); [maxLength] caps the digits.
/// A [code] (a PIN) keeps a leading zero.
String applyNumpadKey(String value, NumpadKey key, {int decimals = 0, int maxLength = 10, bool code = false}) {
  switch (key) {
    case BackspaceKey():
      return value.isEmpty ? value : value.substring(0, value.length - 1);
    case DecimalKey():
      if (decimals == 0 || value.contains('.')) return value;
      return value.isEmpty ? '0.' : '$value.';
    case DigitKey(:final digit):
      final dot = value.indexOf('.');
      if (dot >= 0 && value.length - dot - 1 >= decimals) return value;
      if (value.replaceAll('.', '').length >= maxLength) return value;
      if (value == '0' && !code) return '$digit';
      return '$value$digit';
  }
}

/// The custom number keypad (ux-design section 5): digits, `.`, ⌫ and a big NEXT key.
/// Keys are at least 64 dp. The `.` key is hidden when [decimals] is 0.
class AppNumpad extends StatelessWidget {
  const AppNumpad({
    required this.value,
    required this.onChanged,
    this.decimals = 0,
    this.onNext,
    this.nextLabel = 'NEXT',
    this.maxLength = 10,
    this.code = false,
    super.key,
  });

  final String value;
  final ValueChanged<String> onChanged;
  final int decimals;
  final VoidCallback? onNext;
  final String nextLabel;
  final int maxLength;

  /// Digits of a code (a PIN): a leading zero stays.
  final bool code;

  void _press(NumpadKey key) {
    unawaited(HapticFeedback.selectionClick());
    onChanged(applyNumpadKey(value, key, decimals: decimals, maxLength: maxLength, code: code));
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    Widget key(Widget label, NumpadKey? k, {String? semantics}) => Expanded(
      child: Padding(
        padding: const EdgeInsets.all(Space.xs),
        child: SizedBox(
          height: Touch.numpadKey,
          child: k == null
              ? const SizedBox.shrink()
              : Semantics(
                  button: true,
                  label: semantics,
                  child: Material(
                    color: c.card,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: c.border),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () => _press(k),
                      child: Center(child: label),
                    ),
                  ),
                ),
        ),
      ),
    );
    Text digit(int d) => Text(
      '$d',
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: c.text),
    );
    return Container(
      color: c.surface,
      padding: const EdgeInsets.fromLTRB(Space.sm, Space.sm, Space.sm, 0),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final row in const [
              [1, 2, 3],
              [4, 5, 6],
              [7, 8, 9],
            ])
              Row(children: [for (final d in row) key(digit(d), DigitKey(d))]),
            Row(
              children: [
                key(
                  Text('.', style: TextStyle(fontSize: 26, color: c.text)),
                  decimals > 0 ? const DecimalKey() : null,
                  semantics: 'point',
                ),
                key(digit(0), const DigitKey(0)),
                key(Icon(Icons.backspace_outlined, color: c.text), const BackspaceKey(), semantics: 'delete'),
              ],
            ),
            if (onNext != null)
              Padding(
                padding: const EdgeInsets.all(Space.xs),
                child: FilledButton(onPressed: onNext, child: Text(nextLabel)),
              ),
          ],
        ),
      ),
    );
  }
}
