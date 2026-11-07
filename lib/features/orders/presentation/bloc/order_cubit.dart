import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/orders/domain/order.dart';
import 'package:uuid/uuid.dart';

enum OrderStep { form, check, saved }

/// The line sheet: product, unit, quantity and the quoted rate.
final class LineEditor {
  const LineEditor({
    required this.product,
    required this.unit,
    this.index,
    this.qty = '',
    this.estimate = '',
    this.perPack,
    this.quote,
    this.quoting = false,
    this.quoteFailure,
    this.rate,
  });

  final OrderProduct product;
  final OrderUnit unit;

  /// The line being changed; null for a new one.
  final int? index;

  /// Typed packs (for a pack unit) or stock units.
  final String qty;

  /// Variable packs: the estimated stock-unit total, filled from [perPack] when known.
  final String estimate;
  final String? perPack;
  final Quote? quote;
  final bool quoting;
  final AppFailure? quoteFailure;

  /// The rate used (paise per [Quote.ratePer]); the quote's unless owner/manager edits.
  final int? rate;

  String? get packCount => unit.isPack ? quantityFrom(qty) : null;

  String? get quantity {
    if (!unit.isPack) return quantityFrom(qty);
    final packs = packCount;
    if (packs == null) return null;
    if (unit.fixed) return packsTimes(packs, unit.size!);
    return quantityFrom(estimate);
  }

  /// What blocks ADD, in plain words.
  String? get problem {
    if (quoting) return null;
    if (quoteFailure != null) return quoteFailure!.message;
    if (rate == null || rate == 0) return 'No rate for ${product.name} today — ask the owner';
    if (quantityFrom(qty) == null) return 'Enter the quantity';
    if (quantity == null) return 'Enter the estimated ${product.stockUnit}';
    return null;
  }

  OrderLine? get line => problem != null || quoting
      ? null
      : OrderLine(
          product: product,
          unit: unit,
          packCount: packCount,
          quantity: quantity!,
          rate: rate!,
          ratePer: quote?.ratePer ?? RatePer.stockUnit,
          minimumRate: quote?.minimumRate,
        );

  LineEditor copyWith({
    OrderUnit? unit,
    String? qty,
    String? estimate,
    String? Function()? perPack,
    Quote? Function()? quote,
    bool? quoting,
    AppFailure? Function()? quoteFailure,
    int? Function()? rate,
  }) => LineEditor(
    product: product,
    unit: unit ?? this.unit,
    index: index,
    qty: qty ?? this.qty,
    estimate: estimate ?? this.estimate,
    perPack: perPack == null ? this.perPack : perPack(),
    quote: quote == null ? this.quote : quote(),
    quoting: quoting ?? this.quoting,
    quoteFailure: quoteFailure == null ? this.quoteFailure : quoteFailure(),
    rate: rate == null ? this.rate : rate(),
  );
}

final class OrderState {
  const OrderState({
    required this.idempotencyKey,
    required this.orderDate,
    this.products = const [],
    this.history = const [],
    this.recent = const [],
    this.loading = true,
    this.loadFailure,
    this.query = '',
    this.lines = const [],
    this.editor,
    this.notes = const {},
    this.noteText = '',
    this.step = OrderStep.form,
    this.busy = false,
    this.failure,
    this.placed,
  });

  final List<OrderProduct> products;
  final List<PastOrder> history;

  /// Recent product ids: this shop's, else the user's most ordered.
  final List<String> recent;
  final bool loading;
  final AppFailure? loadFailure;
  final String query;
  final List<OrderLine> lines;
  final LineEditor? editor;
  final Set<String> notes;
  final String noteText;
  final OrderStep step;
  final bool busy;
  final AppFailure? failure;
  final PlacedOrder? placed;
  final String idempotencyKey;

  /// The Indian date the order was started, sent with every try.
  final String orderDate;

  int get total => lines.fold(0, (sum, l) => sum + l.amount);

  String get note =>
      [...orderNoteChips.where(notes.contains), if (noteText.trim().isNotEmpty) noteText.trim()].join(', ');

  List<OrderProduct> get recentProducts => [for (final id in recent) ?products.where((p) => p.id == id).firstOrNull];

  List<OrderProduct> get matches {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return const [];
    return [
      for (final p in products)
        if (p.name.toLowerCase().contains(q)) p,
    ];
  }

  OrderState copyWith({
    List<OrderProduct>? products,
    List<PastOrder>? history,
    List<String>? recent,
    bool? loading,
    AppFailure? Function()? loadFailure,
    String? query,
    List<OrderLine>? lines,
    LineEditor? Function()? editor,
    Set<String>? notes,
    String? noteText,
    OrderStep? step,
    bool? busy,
    AppFailure? Function()? failure,
    PlacedOrder? placed,
    String? idempotencyKey,
  }) => OrderState(
    products: products ?? this.products,
    history: history ?? this.history,
    recent: recent ?? this.recent,
    loading: loading ?? this.loading,
    loadFailure: loadFailure == null ? this.loadFailure : loadFailure(),
    query: query ?? this.query,
    lines: lines ?? this.lines,
    editor: editor == null ? this.editor : editor(),
    notes: notes ?? this.notes,
    noteText: noteText ?? this.noteText,
    step: step ?? this.step,
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    placed: placed ?? this.placed,
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
    orderDate: orderDate,
  );
}

/// Take order (ux-design 4.2): Recent / search / Repeat → line sheet (unit, quantity,
/// quoted rate) → note → Check → Sent, or Waiting for approval.
class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._repository, this.target, {this.canEditRate = false, DateTime? now, String? idempotencyKey})
    : super(OrderState(idempotencyKey: idempotencyKey ?? const Uuid().v4(), orderDate: isoDate(indianToday(now))));

  final OrdersRepository _repository;
  final OrderTarget target;

  /// Owner/manager may change the quoted rate; for agents it is locked (ux-design 4.2).
  final bool canEditRate;

  Future<void> load() async {
    emit(state.copyWith(loading: true, loadFailure: () => null));
    final products = await _repository.products();
    final history = await _repository.history(target.customerId);
    switch ((products, history)) {
      case (Ok(value: final products), Ok(value: final history)):
        var mine = const <PastOrder>[];
        if (history.isEmpty) {
          if (await _repository.myOrders() case Ok(:final value)) mine = value;
        }
        emit(
          state.copyWith(loading: false, products: products, history: history, recent: recentProductIds(history, mine)),
        );
      case (Err(:final failure), _) || (_, Err(:final failure)):
        emit(state.copyWith(loading: false, loadFailure: () => failure));
    }
  }

  void search(String query) => emit(state.copyWith(query: query));

  /// Opens the line sheet for [product] with the shop's last unit, and fetches its rate.
  Future<void> openProduct(OrderProduct product) async {
    final existing = state.lines.indexWhere((l) => l.product.id == product.id);
    if (existing >= 0) {
      editLine(existing);
      return;
    }
    final unit = defaultUnit(product, state.history);
    emit(
      state.copyWith(
        editor: () => LineEditor(product: product, unit: unit, perPack: _perPack(product, unit)),
      ),
    );
    await _quote();
  }

  void editLine(int index) {
    final l = state.lines[index];
    emit(
      state.copyWith(
        editor: () => LineEditor(
          product: l.product,
          unit: l.unit,
          index: index,
          qty: _plainText(l.packCount ?? l.quantity),
          estimate: l.unit.variable ? _plainText(l.quantity) : '',
          perPack: _perPack(l.product, l.unit),
          quote: Quote(rate: l.rate, ratePer: l.ratePer, minimumRate: l.minimumRate),
          rate: l.rate,
        ),
      ),
    );
  }

  Future<void> setUnit(OrderUnit unit) async {
    final e = state.editor;
    if (e == null || e.unit == unit) return;
    emit(
      state.copyWith(
        editor: () => e.copyWith(unit: unit, qty: '', estimate: '', perPack: () => _perPack(e.product, unit)),
      ),
    );
    await _quote();
  }

  void setQty(String text) {
    final e = state.editor;
    if (e == null) return;
    var estimate = e.estimate;
    if (e.unit.variable && e.perPack != null) {
      final packs = quantityFrom(text);
      estimate = packs == null ? '' : _plainText(packsTimes(packs, e.perPack!));
    }
    emit(
      state.copyWith(
        editor: () => e.copyWith(qty: text, estimate: estimate),
      ),
    );
  }

  void setEstimate(String text) => _edit((e) => e.copyWith(estimate: text));

  void setRate(int paise) {
    if (canEditRate) _edit((e) => e.copyWith(rate: () => paise));
  }

  void closeEditor() => emit(state.copyWith(editor: () => null));

  /// ADD (or UPDATE): the line goes into the order.
  void addLine() {
    final e = state.editor;
    final line = e?.line;
    if (e == null || line == null) return;
    final lines = [...state.lines];
    if (e.index case final i?) {
      lines[i] = line;
    } else {
      lines.add(line);
    }
    emit(state.copyWith(lines: lines, editor: () => null, query: '', failure: () => null));
  }

  void removeLine(int index) => emit(state.copyWith(lines: [...state.lines]..removeAt(index)));

  /// Repeat last order: the shop's last lines at today's rates; each stays editable.
  Future<void> repeatLast() async {
    if (state.history.isEmpty || state.busy) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final lines = <OrderLine>[];
    AppFailure? failure;
    for (final past in state.history.first.lines) {
      final product = state.products.where((p) => p.id == past.productId).firstOrNull;
      if (product == null) continue;
      final unit = product.unitFor(past.packUnitId);
      final quote = await _repository.quote(
        productId: product.id,
        customerId: target.customerId,
        packUnitId: unit.packUnitId,
      );
      switch (quote) {
        case Ok(:final value) when value.rate != null:
          lines.add(
            OrderLine(
              product: product,
              unit: unit,
              packCount: unit.isPack ? past.packCount : null,
              quantity: unit.fixed && past.packCount != null ? packsTimes(past.packCount!, unit.size!) : past.quantity,
              rate: value.rate!,
              ratePer: value.ratePer,
              minimumRate: value.minimumRate,
            ),
          );
        case Ok():
          break;
        case Err(failure: final f):
          failure ??= f;
      }
    }
    emit(state.copyWith(busy: false, lines: [...state.lines, ...lines], failure: () => failure));
  }

  void toggleNote(String chip) => emit(
    state.copyWith(notes: state.notes.contains(chip) ? ({...state.notes}..remove(chip)) : {...state.notes, chip}),
  );

  void setNoteText(String text) => emit(state.copyWith(noteText: text));

  /// NEXT: the Check screen.
  void next() {
    if (state.lines.isNotEmpty) emit(state.copyWith(step: OrderStep.check, failure: () => null));
  }

  void back() => emit(state.copyWith(step: OrderStep.form, failure: () => null));

  /// How far over the credit limit (agents: the order will wait for approval).
  int get overLimitBy => canEditRate
      ? 0
      : overLimitByFor(outstanding: target.outstanding, creditLimit: target.creditLimit, total: state.total);

  Future<void> place() async {
    if (state.busy || state.lines.isEmpty) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final result = await _repository.place(
      customerId: target.customerId,
      shopName: target.name,
      orderDate: state.orderDate,
      lines: state.lines,
      note: state.note,
      idempotencyKey: state.idempotencyKey,
    );
    switch (result) {
      case Ok(:final value):
        emit(state.copyWith(busy: false, step: OrderStep.saved, placed: value));
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

  Future<void> _quote() async {
    final e = state.editor;
    if (e == null) return;
    emit(state.copyWith(editor: () => e.copyWith(quoting: true, quoteFailure: () => null)));
    final result = await _repository.quote(
      productId: e.product.id,
      customerId: target.customerId,
      packUnitId: e.unit.packUnitId,
    );
    final now = state.editor;
    // The sheet was closed or moved to another unit meanwhile.
    if (now == null || now.product.id != e.product.id || now.unit != e.unit) return;
    switch (result) {
      case Ok(:final value):
        emit(
          state.copyWith(
            editor: () => now.copyWith(quoting: false, quote: () => value, rate: () => value.rate),
          ),
        );
      case Err(:final failure):
        emit(state.copyWith(editor: () => now.copyWith(quoting: false, quoteFailure: () => failure)));
    }
  }

  void _edit(LineEditor Function(LineEditor e) change) {
    if (state.editor case final e?) emit(state.copyWith(editor: () => change(e)));
  }

  String? _perPack(OrderProduct product, OrderUnit unit) =>
      unit.variable ? perPackEstimate(state.history, product.id, unit.packUnitId!) : null;

  static String _plainText(String quantity) =>
      quantity.contains('.') ? quantity.replaceFirst(RegExp(r'0+$'), '').replaceFirst(RegExp(r'\.$'), '') : quantity;
}
