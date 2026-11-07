import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:uuid/uuid.dart';

enum CollectStep { form, check, saved }

final class CollectState {
  const CollectState({
    required this.lines,
    required this.idempotencyKey,
    this.accounts = const [],
    this.selected = 0,
    this.step = CollectStep.form,
    this.preview,
    this.busy = false,
    this.failure,
    this.saved,
    this.sharing = false,
    this.shareFailure,
  });

  /// Cash and UPI first (always shown), then Bank and Cheque once added.
  final List<PaymentLine> lines;
  final List<MoneyAccount> accounts;

  /// The amount row the numpad types into.
  final int selected;
  final CollectStep step;
  final AllocationPreview? preview;
  final bool busy;
  final AppFailure? failure;
  final SavedReceipt? saved;

  /// Preparing the receipt PDF for the share sheet, and why it last failed.
  final bool sharing;
  final AppFailure? shareFailure;

  /// One key per collection, reused on every retry (ARCHITECTURE "Saving entries").
  final String idempotencyKey;

  int get total => lines.fold(0, (sum, l) => sum + l.amount);

  String? get problem => collectProblem(lines);

  List<MoneyAccount> accountsFor(PaymentMethod method) => [
    for (final a in accounts)
      if (a.method == method) a,
  ];

  bool has(PaymentMethod method) => lines.any((l) => l.method == method);

  CollectState copyWith({
    List<PaymentLine>? lines,
    List<MoneyAccount>? accounts,
    int? selected,
    CollectStep? step,
    AllocationPreview? Function()? preview,
    bool? busy,
    AppFailure? Function()? failure,
    SavedReceipt? saved,
    String? idempotencyKey,
    bool? sharing,
    AppFailure? Function()? shareFailure,
  }) => CollectState(
    lines: lines ?? this.lines,
    accounts: accounts ?? this.accounts,
    selected: selected ?? this.selected,
    step: step ?? this.step,
    preview: preview == null ? this.preview : preview(),
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    saved: saved ?? this.saved,
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
    sharing: sharing ?? this.sharing,
    shareFailure: shareFailure == null ? this.shareFailure : shareFailure(),
  );
}

/// Collect → Check → Saved (ux-design 4.1). The server settles bills and keeps any extra
/// as advance; the app only previews it.
class CollectCubit extends Cubit<CollectState> {
  CollectCubit(this._repository, this._documents, this.target, {String? idempotencyKey})
    : super(
        CollectState(
          lines: const [
            PaymentLine(method: PaymentMethod.cash),
            PaymentLine(method: PaymentMethod.upi),
          ],
          idempotencyKey: idempotencyKey ?? const Uuid().v4(),
        ),
      );

  final CollectRepository _repository;
  final DocumentsRepository _documents;
  final CollectTarget target;

  /// Loads the UPI and bank accounts; a single account is chosen for the user.
  Future<void> start() async {
    switch (await _repository.accounts()) {
      case Ok(:final value):
        emit(state.copyWith(accounts: value, lines: [for (final l in state.lines) _withDefaultAccount(l, value)]));
      case Err(:final failure):
        emit(state.copyWith(failure: () => failure));
    }
  }

  PaymentLine _withDefaultAccount(PaymentLine line, List<MoneyAccount> accounts) {
    if (line.accountId != null) return line;
    final matching = accounts.where((a) => a.method == line.method).toList();
    return matching.length == 1 ? line.copyWith(accountId: matching.single.id) : line;
  }

  void select(int index) => emit(state.copyWith(selected: index));

  void setAmount(int index, int paise) => _update(index, (l) => l.copyWith(amount: paise));

  void update(int index, PaymentLine Function(PaymentLine line) change) => _update(index, change);

  void _update(int index, PaymentLine Function(PaymentLine line) change) {
    final lines = [...state.lines];
    lines[index] = change(lines[index]);
    emit(state.copyWith(lines: lines, failure: () => null));
  }

  /// "+ Bank" / "+ Cheque": adds the row and moves the numpad to it.
  void add(PaymentMethod method) {
    if (state.has(method)) return;
    final lines = [...state.lines, _withDefaultAccount(PaymentLine(method: method), state.accounts)];
    emit(state.copyWith(lines: lines, selected: lines.length - 1));
  }

  /// NEXT on the numpad: the next amount row, then Check.
  Future<void> next() async {
    if (state.selected < state.lines.length - 1) {
      emit(state.copyWith(selected: state.selected + 1));
      return;
    }
    await check();
  }

  Future<void> check() async {
    if (state.problem != null || state.busy) return;
    emit(state.copyWith(busy: true, failure: () => null));
    switch (await _repository.preview(customerId: target.customerId, amount: state.total)) {
      case Ok(:final value):
        emit(state.copyWith(busy: false, step: CollectStep.check, preview: () => value));
      case Err(:final failure):
        emit(state.copyWith(busy: false, failure: () => failure));
    }
  }

  void back() => emit(state.copyWith(step: CollectStep.form, failure: () => null));

  Future<void> save() async {
    if (state.busy) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final result = await _repository.save(
      customerId: target.customerId,
      lines: state.lines,
      idempotencyKey: state.idempotencyKey,
    );
    switch (result) {
      case Ok(:final value):
        emit(state.copyWith(busy: false, step: CollectStep.saved, saved: value));
      case Err(:final failure):
        // A refusal is final: the next try is a new action with a new key. Network and
        // server failures keep the key (the receipt may have posted), so a retry can't
        // post twice.
        emit(
          state.copyWith(
            busy: false,
            failure: () => failure,
            idempotencyKey: failure.kind == FailureKind.rejected ? const Uuid().v4() : null,
          ),
        );
    }
  }

  /// The saved receipt as a PDF on the phone, for the share sheet (null when it failed).
  Future<DocumentFile?> receiptPdf() async {
    final saved = state.saved;
    if (saved == null || state.sharing) return null;
    emit(state.copyWith(sharing: true, shareFailure: () => null));
    switch (await _documents.receiptPdf(saved.id)) {
      case Ok(:final value):
        emit(state.copyWith(sharing: false));
        return value;
      case Err(:final failure):
        emit(state.copyWith(sharing: false, shareFailure: () => failure));
        return null;
    }
  }
}
