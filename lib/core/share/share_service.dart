import 'package:share_plus/share_plus.dart';

/// Opens the phone's share sheet (WhatsApp first for most users). No app can be handed a
/// file *and* a chat number together, so the user picks WhatsApp, then the shop.
class ShareService {
  const ShareService();

  Future<void> shareFile(String path, {String? text}) async {
    await SharePlus.instance.share(
      ShareParams(
        files: [XFile(path, mimeType: 'application/pdf')],
        text: text,
      ),
    );
  }
}
