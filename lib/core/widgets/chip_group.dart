import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';

/// Pick, don't type (ux-design principle 3): one choice from a few big chips.
class ChipGroup<T> extends StatelessWidget {
  const ChipGroup({
    required this.options,
    required this.labelOf,
    required this.selected,
    required this.onSelected,
    super.key,
  });

  final List<T> options;
  final String Function(T option) labelOf;
  final T? selected;
  final ValueChanged<T> onSelected;

  @override
  Widget build(BuildContext context) => Wrap(
    spacing: Space.sm,
    runSpacing: Space.sm,
    children: [
      for (final option in options)
        ChoiceChip(
          label: Text(labelOf(option)),
          selected: option == selected,
          onSelected: (_) => onSelected(option),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
    ],
  );
}
