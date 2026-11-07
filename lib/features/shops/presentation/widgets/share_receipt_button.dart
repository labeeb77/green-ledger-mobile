import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/share/share_service.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';

/// Shares a saved receipt again (ux-design section 9: any saved entry can be reshared).
class ShareReceiptButton extends StatefulWidget {
  const ShareReceiptButton({required this.receiptId, required this.text, this.share = const ShareService(), super.key});

  final String receiptId;
  final String text;
  final ShareService share;

  @override
  State<ShareReceiptButton> createState() => _ShareReceiptButtonState();
}

class _ShareReceiptButtonState extends State<ShareReceiptButton> {
  bool _busy = false;

  Future<void> _share() async {
    setState(() => _busy = true);
    final messenger = ScaffoldMessenger.of(context);
    final result = await context.read<DocumentsRepository>().receiptPdf(widget.receiptId);
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
    tooltip: 'Share',
    onPressed: _busy ? null : () => unawaited(_share()),
    icon: _busy
        ? const SizedBox.square(dimension: 20, child: CircularProgressIndicator(strokeWidth: 2))
        : const Icon(Icons.share_outlined),
  );
}
