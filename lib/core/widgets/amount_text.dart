import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';

enum AmountTone { normal, due, paid, cancelled }

/// Money in paise, formatted `₹1,24,500`: 20 sp in lists, 28 sp for totals, bold.
class AmountText extends StatelessWidget {
  const AmountText(
    this.paise, {
    this.tone = AmountTone.normal,
    this.large = false,
    this.approximate = false,
    super.key,
  });

  final int paise;
  final AmountTone tone;
  final bool large;

  /// Prefix "≈" for amounts fixed only after weighing (orders, D4).
  final bool approximate;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final color = switch (tone) {
      AmountTone.normal => c.text,
      AmountTone.due => c.due,
      AmountTone.paid => c.paid,
      AmountTone.cancelled => c.cancelled,
    };
    return Text(
      '${approximate ? '≈ ' : ''}${formatMoney(paise)}',
      style: TextStyle(
        fontSize: large ? 28 : 20,
        fontWeight: FontWeight.w700,
        color: color,
        decoration: tone == AmountTone.cancelled ? TextDecoration.lineThrough : null,
        fontFeatures: const [FontFeature.tabularFigures()],
      ),
    );
  }
}
