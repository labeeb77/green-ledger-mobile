import 'package:flutter/material.dart';
import 'package:green_ledger_mobile/app/app.dart';
import 'package:green_ledger_mobile/app/di.dart';
import 'package:green_ledger_mobile/app/flavor.dart';

/// Shared start-up for every flavour's entry point.
void bootstrap(Flavor flavor) {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(FlavorConfig.fromEnvironment(flavor));
  runApp(const App());
}
