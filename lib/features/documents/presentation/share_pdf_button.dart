import 'dart:async';

import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/share/share_service.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';

/// Makes a PDF on the server and opens the share sheet (ux-design section 9). [choose]
/// asks first (e.g. a statement period); null from it means the user backed out.
class SharePdfButton<T extends Object> extends StatefulWidget {
  const SharePdfButton({
    required this.pdf,
    required this.text,
    this.choose,
    this.tooltip = 'Share',
    this.share = const ShareService(),
    super.key,
  });

  final Future<T?> Function(BuildContext context)? choose;
  final Future<Result<DocumentFile>> Function(BuildContext context, T? choice) pdf;
  final String text;
  final String tooltip;
  final ShareService share;

  @override
  State<SharePdfButton<T>> createState() => _SharePdfButtonState<T>();
}

class _SharePdfButtonState<T extends Object> extends State<SharePdfButton<T>> {
  bool _busy = false;

  Future<void> _share() async {
    final messenger = ScaffoldMessenger.of(context);
    T? choice;
    if (widget.choose case final choose?) {
      choice = await choose(context);
      if (choice == null || !mounted) return;
    }
    final pending = widget.pdf(context, choice);
    setState(() => _busy = true);
    final result = await pending;
    if (!mounted) return;
    setState(() => _busy = false);
    switch (result) {
      case Ok(:final value):
        await widget.share.shareFile(value.path, text: widget.text);
      case Err(:final failure):
        messenger.showSnackBar(SnackBar(content: Text(failure.message)));
    }
  }

  @override
  Widget build(BuildContext context) => IconButton(
    tooltip: widget.tooltip,
    onPressed: _busy ? null : () => unawaited(_share()),
    icon: _busy
        ? const SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 2))
        : const Icon(Icons.share_outlined),
  );
}
