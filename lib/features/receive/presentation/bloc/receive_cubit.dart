import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/receive/domain/receive.dart';
import 'package:uuid/uuid.dart';

enum ReceiveStep { form, check, saved }

/// The item sheet: product, pack, packs, net (main field), optional gross/tare, grade.
final class ItemEditor {
  const ItemEditor({
    this.product,
    this.pack,
    this.packs = '',
    this.net = '',
    this.netTyped = false,
    this.showWeights = false,
    this.gross = '',
    this.tare = '',
    this.grade,
    this.index,
  });

  final ReceiveProduct? product;
  final ReceivePack? pack;
  final String packs;
  final String net;

  /// The net was typed, so packs no longer fill it.
  final bool netTyped;
  final bool showWeights;
  final String gross;
  final String tare;
  final Grade? grade;

  /// The line being changed; null for a new one.
  final int? index;

  bool get usesWeights => showWeights && gross.trim().isNotEmpty;

  /// The net weight the line will have.
  String? get netQuantity => usesWeights ? netFromWeights(gross, tare) : quantityOf(net);

  String? get problem {
    final p = product;
    if (p == null) return 'Choose the product';
    if (pack != null && quantityOf(packs) == null) return 'Enter the number of ${pack!.name.toLowerCase()}s';
    if (usesWeights && netQuantity == null) return 'Tare must be less than gross';
    if (netQuantity == null) return 'Enter the net ${p.stockUnit}';
    return null;
  }

  ReceiveLine? get line => problem != null
      ? null
      : ReceiveLine(
          product: product!,
          pack: pack,
          packCount: pack == null ? null : quantityOf(packs),
          net: netQuantity!,
          gross: usesWeights ? quantityOf(gross) : null,
          tare: usesWeights && tare.trim().isNotEmpty ? quantityOf(tare) : null,
          grade: grade,
        );

  ItemEditor copyWith({
    ReceiveProduct? product,
    ReceivePack? Function()? pack,
    String? packs,
    String? net,
    bool? netTyped,
    bool? showWeights,
    String? gross,
    String? tare,
    Grade? Function()? grade,
  }) => ItemEditor(
    product: product ?? this.product,
    pack: pack == null ? this.pack : pack(),
    packs: packs ?? this.packs,
    net: net ?? this.net,
    netTyped: netTyped ?? this.netTyped,
    showWeights: showWeights ?? this.showWeights,
    gross: gross ?? this.gross,
    tare: tare ?? this.tare,
    grade: grade == null ? this.grade : grade(),
    index: index,
  );
}

final class ReceiveState {
  const ReceiveState({
    required this.idempotencyKey,
    required this.receiptDate,
    this.suppliers = const [],
    this.products = const [],
    this.loading = true,
    this.loadFailure,
    this.supplier,
    this.lines = const [],
    this.editor,
    this.slipPhotoPath,
    this.askSlip = false,
    this.askedSlip = false,
    this.vehicleNo = '',
    this.step = ReceiveStep.form,
    this.busy = false,
    this.failure,
    this.saved,
  });

  final List<Supplier> suppliers;
  final List<ReceiveProduct> products;
  final bool loading;
  final AppFailure? loadFailure;
  final Supplier? supplier;
  final List<ReceiveLine> lines;
  final ItemEditor? editor;
  final String? slipPhotoPath;

  /// "No slip photo — add one?" is showing; it is asked once per receipt.
  final bool askSlip;
  final bool askedSlip;
  final String vehicleNo;
  final ReceiveStep step;
  final bool busy;
  final AppFailure? failure;
  final SavedReceipt? saved;
  final String idempotencyKey;

  /// The Indian date the receipt was started, sent with every try.
  final String receiptDate;

  ReceiveState copyWith({
    List<Supplier>? suppliers,
    List<ReceiveProduct>? products,
    bool? loading,
    AppFailure? Function()? loadFailure,
    Supplier? supplier,
    List<ReceiveLine>? lines,
    ItemEditor? Function()? editor,
    String? Function()? slipPhotoPath,
    bool? askSlip,
    bool? askedSlip,
    String? vehicleNo,
    ReceiveStep? step,
    bool? busy,
    AppFailure? Function()? failure,
    SavedReceipt? saved,
    String? idempotencyKey,
  }) => ReceiveState(
    suppliers: suppliers ?? this.suppliers,
    products: products ?? this.products,
    loading: loading ?? this.loading,
    loadFailure: loadFailure == null ? this.loadFailure : loadFailure(),
    supplier: supplier ?? this.supplier,
    lines: lines ?? this.lines,
    editor: editor == null ? this.editor : editor(),
    slipPhotoPath: slipPhotoPath == null ? this.slipPhotoPath : slipPhotoPath(),
    askSlip: askSlip ?? this.askSlip,
    askedSlip: askedSlip ?? this.askedSlip,
    vehicleNo: vehicleNo ?? this.vehicleNo,
    step: step ?? this.step,
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    saved: saved ?? this.saved,
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
    receiptDate: receiptDate,
  );
}

/// Receive goods (ux-design 4.3): supplier (recent first) → items (packs, net, optional
/// gross/tare, grade) → slip photo, asked once → Check → Saved. No prices.
class ReceiveCubit extends Cubit<ReceiveState> {
  ReceiveCubit(this._repository, {DateTime? now, String? idempotencyKey})
    : super(ReceiveState(idempotencyKey: idempotencyKey ?? const Uuid().v4(), receiptDate: isoDate(indianToday(now))));

  final ReceiveRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(loading: true, loadFailure: () => null));
    final suppliers = await _repository.suppliers();
    final products = await _repository.products();
    switch ((suppliers, products)) {
      case (Ok(value: final s), Ok(value: final p)):
        emit(state.copyWith(loading: false, suppliers: s, products: p));
      case (Err(:final failure), _) || (_, Err(:final failure)):
        emit(state.copyWith(loading: false, loadFailure: () => failure));
    }
  }

  void chooseSupplier(Supplier supplier) => emit(state.copyWith(supplier: supplier));

  /// "+ Add item".
  void addItem() => emit(state.copyWith(editor: () => const ItemEditor()));

  void editItem(int index) {
    final l = state.lines[index];
    emit(
      state.copyWith(
        editor: () => ItemEditor(
          product: l.product,
          pack: l.pack,
          packs: l.packCount == null ? '' : plainQuantity(l.packCount!),
          net: plainQuantity(l.net),
          netTyped: true,
          showWeights: l.gross != null,
          gross: l.gross == null ? '' : plainQuantity(l.gross!),
          tare: l.tare == null ? '' : plainQuantity(l.tare!),
          grade: l.grade,
          index: index,
        ),
      ),
    );
  }

  /// A product picks its first pack (if it has one) and its only grade.
  void chooseProduct(ReceiveProduct product) => _edit(
    (e) => ItemEditor(
      product: product,
      pack: product.packs.firstOrNull,
      grade: product.grades.length == 1 ? product.grades.single : null,
      index: e.index,
    ),
  );

  void choosePack(ReceivePack? pack) => _edit((e) => _fill(e.copyWith(pack: () => pack, netTyped: false)));

  void setPacks(String text) => _edit((e) => _fill(e.copyWith(packs: text)));

  void setNet(String text) => _edit((e) => e.copyWith(net: text, netTyped: true));

  void toggleWeights() => _edit((e) => e.copyWith(showWeights: !e.showWeights));

  void setGross(String text) => _edit((e) => e.copyWith(gross: text));

  void setTare(String text) => _edit((e) => e.copyWith(tare: text));

  void chooseGrade(Grade grade) => _edit((e) => e.copyWith(grade: () => e.grade == grade ? null : grade));

  void closeEditor() => emit(state.copyWith(editor: () => null));

  void saveItem() {
    final e = state.editor;
    final line = e?.line;
    if (e == null || line == null) return;
    final lines = [...state.lines];
    if (e.index case final i?) {
      lines[i] = line;
    } else {
      lines.add(line);
    }
    emit(state.copyWith(lines: lines, editor: () => null));
  }

  void removeItem(int index) => emit(state.copyWith(lines: [...state.lines]..removeAt(index)));

  void setSlipPhoto(String? path) => emit(state.copyWith(slipPhotoPath: () => path, askSlip: false));

  void setVehicle(String text) => emit(state.copyWith(vehicleNo: text));

  /// NEXT: asks once for a missing slip photo, then Check.
  void next({bool skipSlip = false}) {
    if (state.supplier == null || state.lines.isEmpty) return;
    if (state.slipPhotoPath == null && !state.askedSlip && !skipSlip) {
      emit(state.copyWith(askSlip: true, askedSlip: true));
      return;
    }
    emit(state.copyWith(step: ReceiveStep.check, askSlip: false, failure: () => null));
  }

  void back() => emit(state.copyWith(step: ReceiveStep.form, failure: () => null));

  Future<void> save() async {
    final supplier = state.supplier;
    if (state.busy || supplier == null || state.lines.isEmpty) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final result = await _repository.receive(
      supplier: supplier,
      receiptDate: state.receiptDate,
      lines: state.lines,
      slipPhotoPath: state.slipPhotoPath,
      vehicleNo: state.vehicleNo,
      idempotencyKey: state.idempotencyKey,
    );
    switch (result) {
      case Ok(:final value):
        emit(state.copyWith(busy: false, step: ReceiveStep.saved, saved: value));
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

  /// Fixed packs fill the net (packs × size) until the net is typed.
  static ItemEditor _fill(ItemEditor e) {
    final pack = e.pack;
    if (pack == null || !pack.fixed || e.netTyped) return e;
    final packs = quantityOf(e.packs);
    return e.copyWith(net: packs == null ? '' : plainQuantity(fixedNet(packs, pack.size!)));
  }

  void _edit(ItemEditor Function(ItemEditor e) change) {
    if (state.editor case final e?) emit(state.copyWith(editor: () => change(e)));
  }
}
