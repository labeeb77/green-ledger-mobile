import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Tells open screens that server data may have changed, so tabs kept alive by the shell
/// (Home, Shops, Cash) reload their figures. Fired after every successful save, when the
/// user switches tabs and when the app comes back to the front.
class DataChanges {
  final _controller = StreamController<void>.broadcast();

  Stream<void> get stream => _controller.stream;

  void notify() => _controller.add(null);

  /// The app's [DataChanges], or null without one above [context] (some widget tests).
  static DataChanges? maybeOf(BuildContext context) {
    try {
      return context.read<DataChanges>();
    } on ProviderNotFoundException {
      return null;
    }
  }

  /// Fires [notify] after every successful request that isn't a read.
  Interceptor get interceptor => InterceptorsWrapper(
    onResponse: (response, handler) {
      final options = response.requestOptions;
      final status = response.statusCode ?? 0;
      if (options.method != 'GET' && status >= 200 && status < 300 && !options.path.contains('/auth/')) notify();
      handler.next(response);
    },
  );

  Future<void> close() => _controller.close();
}

/// Calls [onChange] whenever [DataChanges] fires. Without a [DataChanges] above it (some
/// widget tests) it does nothing.
class ReloadOnDataChange extends StatefulWidget {
  const ReloadOnDataChange({required this.onChange, required this.child, super.key});

  final void Function(BuildContext context) onChange;
  final Widget child;

  @override
  State<ReloadOnDataChange> createState() => _ReloadOnDataChangeState();
}

class _ReloadOnDataChangeState extends State<ReloadOnDataChange> {
  StreamSubscription<void>? _subscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_subscription != null) return;
    _subscription = DataChanges.maybeOf(context)?.stream.listen((_) {
      if (mounted) widget.onChange(context);
    });
  }

  @override
  void dispose() {
    unawaited(_subscription?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
