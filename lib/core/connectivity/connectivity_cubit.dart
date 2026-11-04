import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Whether the phone has a network (drives the "No internet" banner). Saves still go to
/// the API and fail with a network failure when offline; this is only a hint.
class ConnectivityCubit extends Cubit<bool> {
  ConnectivityCubit(this._connectivity) : super(true) {
    _subscription = _connectivity.onConnectivityChanged.listen(_update);
    unawaited(_connectivity.checkConnectivity().then(_update));
  }

  final Connectivity _connectivity;
  late final StreamSubscription<List<ConnectivityResult>> _subscription;

  void _update(List<ConnectivityResult> results) {
    if (!isClosed) emit(results.any((r) => r != ConnectivityResult.none));
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    await super.close();
  }
}
