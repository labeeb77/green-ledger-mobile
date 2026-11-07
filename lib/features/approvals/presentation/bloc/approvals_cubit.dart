import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/approvals/domain/approval.dart';
import 'package:uuid/uuid.dart';

final class ApprovalsState {
  const ApprovalsState({
    this.items = const [],
    this.loading = true,
    this.loadFailure,
    this.deciding = const {},
    this.failures = const {},
    this.keys = const {},
    this.lastDecision,
  });

  final List<Approval> items;
  final bool loading;
  final AppFailure? loadFailure;
  final Set<String> deciding;
  final Map<String, AppFailure> failures;

  /// One idempotency key per approval's decision, reused on retry.
  final Map<String, String> keys;

  /// "Approved" / "Rejected", for a snackbar.
  final String? lastDecision;

  ApprovalsState copyWith({
    List<Approval>? items,
    bool? loading,
    AppFailure? Function()? loadFailure,
    Set<String>? deciding,
    Map<String, AppFailure>? failures,
    Map<String, String>? keys,
    String? lastDecision,
  }) => ApprovalsState(
    items: items ?? this.items,
    loading: loading ?? this.loading,
    loadFailure: loadFailure == null ? this.loadFailure : loadFailure(),
    deciding: deciding ?? this.deciding,
    failures: failures ?? this.failures,
    keys: keys ?? this.keys,
    lastDecision: lastDecision,
  );
}

/// The Approvals tab (ux-design 4.6): approve, or reject with a note.
class ApprovalsCubit extends Cubit<ApprovalsState> {
  ApprovalsCubit(this._repository) : super(const ApprovalsState());

  final ApprovalsRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(loading: true, loadFailure: () => null));
    switch (await _repository.pending()) {
      case Ok(:final value):
        emit(state.copyWith(loading: false, items: value));
      case Err(:final failure):
        emit(state.copyWith(loading: false, loadFailure: () => failure));
    }
  }

  Future<void> approve(Approval a) => _decide(a, 'Approved', (key) => _repository.approve(a.id, idempotencyKey: key));

  Future<void> reject(Approval a, String note) {
    if (note.trim().isEmpty) return Future.value();
    return _decide(a, 'Rejected', (key) => _repository.reject(a.id, note: note.trim(), idempotencyKey: key));
  }

  Future<void> _decide(Approval a, String done, Future<Result<void>> Function(String key) call) async {
    if (state.deciding.contains(a.id)) return;
    final key = state.keys[a.id] ?? const Uuid().v4();
    emit(
      state.copyWith(
        deciding: {...state.deciding, a.id},
        failures: {...state.failures}..remove(a.id),
        keys: {...state.keys, a.id: key},
      ),
    );
    final result = await call(key);
    final deciding = {...state.deciding}..remove(a.id);
    switch (result) {
      case Ok():
        emit(
          state.copyWith(
            items: [
              for (final i in state.items)
                if (i.id != a.id) i,
            ],
            deciding: deciding,
            keys: {...state.keys}..remove(a.id),
            lastDecision: done,
          ),
        );
      case Err(:final failure):
        emit(
          state.copyWith(
            deciding: deciding,
            failures: {...state.failures, a.id: failure},
            // A refusal (e.g. already decided by someone else) is final: refresh the list.
            keys: failure.kind == FailureKind.rejected ? ({...state.keys}..remove(a.id)) : null,
          ),
        );
    }
  }
}
