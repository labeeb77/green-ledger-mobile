import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';

/// An amount in rupees (up to 2 decimals) that follows [value] when it changes from
/// outside (e.g. "Full"). Invalid text counts as no change.
class PaiseField extends StatefulWidget {
  const PaiseField({required this.value, required this.onChanged, this.label, super.key});

  final int value;
  final ValueChanged<int> onChanged;
  final String? label;

  @override
  State<PaiseField> createState() => _PaiseFieldState();
}

class _PaiseFieldState extends State<PaiseField> {
  late final TextEditingController _controller = TextEditingController(text: paiseToText(widget.value));

  @override
  void didUpdateWidget(PaiseField old) {
    super.didUpdateWidget(old);
    if (parseRupees(_controller.text) != widget.value) _controller.text = paiseToText(widget.value);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TextField(
    controller: _controller,
    keyboardType: const TextInputType.numberWithOptions(decimal: true),
    textAlign: TextAlign.end,
    decoration: InputDecoration(prefixText: '₹ ', labelText: widget.label),
    onChanged: (text) {
      if (parseRupees(text) case final paise?) widget.onChanged(paise);
    },
  );
}
