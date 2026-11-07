import 'package:flutter/material.dart';

/// A number field that keeps its cursor while typing and follows [value] when it
/// changes from outside (e.g. the estimate filled from the packs).
class NumberField extends StatefulWidget {
  const NumberField({
    required this.value,
    required this.onChanged,
    required this.decoration,
    this.autofocus = false,
    super.key,
  });

  final String value;
  final ValueChanged<String> onChanged;
  final InputDecoration decoration;
  final bool autofocus;

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  late final TextEditingController _controller = TextEditingController(text: widget.value);

  @override
  void didUpdateWidget(NumberField old) {
    super.didUpdateWidget(old);
    if (widget.value != _controller.text) _controller.text = widget.value;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TextField(
    controller: _controller,
    autofocus: widget.autofocus,
    keyboardType: const TextInputType.numberWithOptions(decimal: true),
    decoration: widget.decoration,
    onChanged: widget.onChanged,
  );
}
