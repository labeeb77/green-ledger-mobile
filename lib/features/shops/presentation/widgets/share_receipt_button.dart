import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/share/share_service.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:green_ledger_mobile/features/documents/presentation/share_pdf_button.dart';

/// Shares a saved receipt again (ux-design section 9: any saved entry can be reshared).
class ShareReceiptButton extends StatelessWidget {
  const ShareReceiptButton({required this.receiptId, required this.text, this.share = const ShareService(), super.key});

  final String receiptId;
  final String text;
  final ShareService share;

  @override
  Widget build(BuildContext context) => SharePdfButton<Never>(
    pdf: (context, _) => context.read<DocumentsRepository>().receiptPdf(receiptId),
    text: text,
    share: share,
  );
}
