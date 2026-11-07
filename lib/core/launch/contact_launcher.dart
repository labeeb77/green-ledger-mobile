import 'package:url_launcher/url_launcher.dart';

/// Opens the phone dialer or a WhatsApp chat for a number stored as `+91…`.
class ContactLauncher {
  const ContactLauncher();

  Future<bool> call(String phone) => launchUrl(Uri(scheme: 'tel', path: phone));

  /// wa.me opens the chat with that number (text only; files go through the share sheet).
  Future<bool> whatsApp(String phone) => launchUrl(whatsAppUri(phone), mode: LaunchMode.externalApplication);

  static Uri whatsAppUri(String phone) => Uri.https('wa.me', '/${phone.replaceAll(RegExp(r'\D'), '')}');
}
