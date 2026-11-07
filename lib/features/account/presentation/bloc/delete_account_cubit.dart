import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/account/domain/account.dart';
import 'package:uuid/uuid.dart';

class DeleteAccountState {
  const DeleteAccountState({this.loading = true, this.request, this.sending = false, this.failure});

  final bool loading;

  /// The newest request; null when none.
  final DeletionRequest? request;
  final bool sending;
  final AppFailure? failure;

  /// A new request can be sent: none yet, or the last one was declined.
  bool get canRequest => !loading && (request == null || request!.status == DeletionStatus.declined);
}

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit(this._repository) : super(const DeleteAccountState());

  final AccountRepository _repository;

  /// One key per request, reused when SEND is retried after a failure.
  String? _key;

  Future<void> load() async {
    emit(const DeleteAccountState());
    switch (await _repository.myDeletionRequest()) {
      case Ok(:final value):
        emit(DeleteAccountState(loading: false, request: value));
      case Err(:final failure):
        emit(DeleteAccountState(loading: false, failure: failure));
    }
  }

  Future<void> request(String reason) async {
    if (!state.canRequest || state.sending) return;
    emit(DeleteAccountState(loading: false, request: state.request, sending: true));
    final key = _key ??= const Uuid().v4();
    final text = reason.trim();
    switch (await _repository.requestDeletion(reason: text.isEmpty ? null : text, idempotencyKey: key)) {
      case Ok(:final value):
        _key = null;
        emit(DeleteAccountState(loading: false, request: value));
      case Err(:final failure):
        emit(DeleteAccountState(loading: false, request: state.request, failure: failure));
    }
  }
}
