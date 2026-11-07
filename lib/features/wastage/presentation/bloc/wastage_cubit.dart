import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/format/units.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/wastage/domain/wastage.dart';
import 'package:uuid/uuid.dart';

enum WastageStep { product, form, check, saved }

final class WastageState {
  const WastageState({
    required this.idempotencyKey,
    required this.entryDate,
    this.products = const [],
    this.loading = true,
    this.loadFailure,
    this.query = '',
    this.product,
    this.quantity = '',
    this.reason,
    this.photoPath,
    this.step = WastageStep.product,
    this.busy = false,
    this.failure,
    this.result,
  });

  final List<WastageProduct> products;
  final bool loading;
  final AppFailure? loadFailure;
  final String query;
  final WastageProduct? product;

  /// As typed on the numpad.
  final String quantity;
  final WastageReason? reason;
  final String? photoPath;
  final WastageStep step;
  final bool busy;
  final AppFailure? failure;
  final WastageResult? result;
  final String idempotencyKey;

  /// The Indian date the entry was started, sent with every try.
  final String entryDate;

  /// The quantity as a 3-decimal string, or null when it isn't more than zero.
  String? get amount {
    final t = quantity.endsWith('.') ? quantity.substring(0, quantity.length - 1) : quantity;
    if (t.isEmpty) return null;
    final m = toMilli(t);
    return m > 0 ? fromMilli(m) : null;
  }

  String? get problem {
    if (amount == null) return 'Enter the quantity';
    if (reason == null) return 'Choose the reason';
    return null;
  }

  List<WastageProduct> get matches {
    final q = query.trim().toLowerCase();
    return [
      for (final p in products)
        if (q.isEmpty || p.name.toLowerCase().contains(q)) p,
    ];
  }

  WastageState copyWith({
    List<WastageProduct>? products,
    bool? loading,
    AppFailure? Function()? loadFailure,
    String? query,
    WastageProduct? product,
    String? quantity,
    WastageReason? reason,
    String? Function()? photoPath,
    WastageStep? step,
    bool? busy,
    AppFailure? Function()? failure,
    WastageResult? result,
    String? idempotencyKey,
  }) => WastageState(
    products: products ?? this.products,
    loading: loading ?? this.loading,
    loadFailure: loadFailure == null ? this.loadFailure : loadFailure(),
    query: query ?? this.query,
    product: product ?? this.product,
    quantity: quantity ?? this.quantity,
    reason: reason ?? this.reason,
    photoPath: photoPath == null ? this.photoPath : photoPath(),
    step: step ?? this.step,
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    result: result ?? this.result,
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
    entryDate: entryDate,
  );
}

/// Wastage (ux-design 4.7): product → quantity → reason → 📷 → Check → Saved, or "Sent
/// for approval" above the owner's threshold.
class WastageCubit extends Cubit<WastageState> {
  WastageCubit(this._repository, {DateTime? now, String? idempotencyKey})
    : super(WastageState(idempotencyKey: idempotencyKey ?? const Uuid().v4(), entryDate: isoDate(indianToday(now))));

  final WastageRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(loading: true, loadFailure: () => null));
    switch (await _repository.products()) {
      case Ok(:final value):
        emit(state.copyWith(loading: false, products: value));
      case Err(:final failure):
        emit(state.copyWith(loading: false, loadFailure: () => failure));
    }
  }

  void search(String query) => emit(state.copyWith(query: query));

  void chooseProduct(WastageProduct product) =>
      emit(state.copyWith(product: product, quantity: '', step: WastageStep.form));

  void setQuantity(String text) => emit(state.copyWith(quantity: text));

  void chooseReason(WastageReason reason) => emit(state.copyWith(reason: reason));

  void setPhoto(String? path) => emit(state.copyWith(photoPath: () => path));

  void next() {
    if (state.problem == null) emit(state.copyWith(step: WastageStep.check, failure: () => null));
  }

  /// Back one step (Check → form → product).
  void back() => emit(
    state.copyWith(step: state.step == WastageStep.check ? WastageStep.form : WastageStep.product, failure: () => null),
  );

  Future<void> save() async {
    final product = state.product;
    final amount = state.amount;
    final reason = state.reason;
    if (state.busy || product == null || amount == null || reason == null) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final result = await _repository.record(
      product: product,
      quantity: amount,
      reason: reason,
      entryDate: state.entryDate,
      photoPath: state.photoPath,
      idempotencyKey: state.idempotencyKey,
    );
    switch (result) {
      case Ok(:final value):
        emit(state.copyWith(busy: false, step: WastageStep.saved, result: value));
      case Err(:final failure):
        emit(
          state.copyWith(
            busy: false,
            failure: () => keptIfOffline(failure),
            idempotencyKey: failure.kind == FailureKind.rejected ? const Uuid().v4() : null,
          ),
        );
    }
  }
}
