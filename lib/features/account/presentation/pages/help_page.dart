import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/launch/contact_launcher.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/core/theme/app_colors.dart';
import 'package:green_ledger_mobile/core/theme/app_theme.dart';
import 'package:green_ledger_mobile/core/widgets/states.dart';
import 'package:green_ledger_mobile/features/account/domain/account.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

/// Help & support (ux-design section 9): the support phone, WhatsApp and email, and the
/// app version to quote when calling.
class HelpPage extends StatefulWidget {
  const HelpPage({this.launcher = const ContactLauncher(), this.version, super.key});

  final ContactLauncher launcher;

  /// For tests; read from the app package otherwise.
  final String? version;

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  late Future<Result<SupportContact>> _contact = context.read<AccountRepository>().support();
  late final Future<String> _version = widget.version != null
      ? Future.value(widget.version)
      : PackageInfo.fromPlatform().then((p) => '${p.version} (${p.buildNumber})');

  @override
  Widget build(BuildContext context) {
    final muted = TextStyle(color: context.colors.muted);
    return Scaffold(
      appBar: AppBar(title: const Text('Help & support')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: Space.sm),
        children: [
          FutureBuilder(
            future: _contact,
            builder: (context, snap) => switch (snap.data) {
              null => const SizedBox(height: 120, child: SkeletonList(rows: 2)),
              Err(:final failure) => Padding(
                padding: const EdgeInsets.all(Space.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FailureMessage(failure),
                    OutlinedButton(
                      onPressed: () => setState(() => _contact = context.read<AccountRepository>().support()),
                      child: const Text('TRY AGAIN'),
                    ),
                  ],
                ),
              ),
              Ok(value: final c) when c.isEmpty => Padding(
                padding: const EdgeInsets.all(Space.lg),
                child: Text('Ask your business owner for help.', style: muted),
              ),
              Ok(value: final c) => Column(
                children: [
                  if (c.phone case final phone?)
                    ListTile(
                      leading: const Icon(Icons.call_outlined),
                      title: const Text('Call support'),
                      subtitle: Text(phone),
                      onTap: () => unawaited(widget.launcher.call(phone)),
                    ),
                  if (c.whatsapp case final number?)
                    ListTile(
                      leading: const Icon(Icons.chat_outlined),
                      title: const Text('WhatsApp support'),
                      subtitle: Text(number),
                      onTap: () => unawaited(widget.launcher.whatsApp(number)),
                    ),
                  if (c.email case final email?)
                    ListTile(
                      leading: const Icon(Icons.mail_outline),
                      title: const Text('Email support'),
                      subtitle: Text(email),
                      onTap: () => unawaited(launchUrl(Uri(scheme: 'mailto', path: email))),
                    ),
                ],
              ),
            },
          ),
          const Divider(),
          FutureBuilder(
            future: _version,
            builder: (context, snap) => ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('App version'),
              subtitle: Text(snap.data ?? '…'),
            ),
          ),
        ],
      ),
    );
  }
}
