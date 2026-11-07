import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/format/units.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/dispatch/domain/dispatch.dart';
import 'package:uuid/uuid.dart';

final class DispatchListState {
  const DispatchListState({this.orders = const [], this.loading = true, this.failure});

  final List<DispatchOrder> orders;
  final bool loading;
  final AppFailure? failure;
}

/// The godown's open orders (Orders by agent, and the Load list).
class DispatchListCubit extends Cubit<DispatchListState> {
  DispatchListCubit(this._repository) : super(const DispatchListState());

  final DispatchRepository _repository;

  Future<void> load() async {
    emit(DispatchListState(orders: state.orders));
    switch (await _repository.toDispatch()) {
      case Ok(:final value):
        emit(DispatchListState(orders: value, loading: false));
      case Err(:final failure):
        emit(DispatchListState(orders: state.orders, loading: false, failure: failure));
    }
  }
}

/// What the godown typed for one line: packs and net (stock units).
final class LineEntry {
  const LineEntry({this.packs = '', this.net = '', this.netTyped = false});

  final String packs;
  final String net;

  /// The net was typed, so packs no longer fill it.
  final bool netTyped;
}

enum DispatchStep { form, check, saved }

final class DispatchOrderState {
  const DispatchOrderState({
    required this.idempotencyKey,
    required this.dispatchDate,
    this.entries = const {},
    this.keepOpen = const {},
    this.vehicleNo = '',
    this.step = DispatchStep.form,
    this.busy = false,
    this.failure,
    this.result,
  });

  final Map<String, LineEntry> entries;

  /// Short lines the godown chose "Send rest later" for; the rest close (preselected).
  final Set<String> keepOpen;
  final String vehicleNo;
  final DispatchStep step;
  final bool busy;
  final AppFailure? failure;
  final DispatchResult? result;
  final String idempotencyKey;

  /// The Indian date the dispatch was started, sent with every try.
  final String dispatchDate;

  DispatchOrderState copyWith({
    Map<String, LineEntry>? entries,
    Set<String>? keepOpen,
    String? vehicleNo,
    DispatchStep? step,
    bool? busy,
    AppFailure? Function()? failure,
    DispatchResult? result,
    String? idempotencyKey,
  }) => DispatchOrderState(
    entries: entries ?? this.entries,
    keepOpen: keepOpen ?? this.keepOpen,
    vehicleNo: vehicleNo ?? this.vehicleNo,
    step: step ?? this.step,
    busy: busy ?? this.busy,
    failure: failure == null ? this.failure : failure(),
    result: result ?? this.result,
    idempotencyKey: idempotencyKey ?? this.idempotencyKey,
    dispatchDate: dispatchDate,
  );
}

/// Dispatch one order (ux-design 4.4): packs and net per line, fixed packs fill in, an
/// empty line is not sent; Check asks per short line, Close preselected.
class DispatchOrderCubit extends Cubit<DispatchOrderState> {
  DispatchOrderCubit(this._repository, this.order, {DateTime? now, String? idempotencyKey})
    : super(
        DispatchOrderState(
          idempotencyKey: idempotencyKey ?? const Uuid().v4(),
          dispatchDate: isoDate(indianToday(now)),
        ),
      );

  final DispatchRepository _repository;
  final DispatchOrder order;

  DispatchLine _line(String id) => order.lines.firstWhere((l) => l.id == id);

  LineEntry entryFor(String id) => state.entries[id] ?? const LineEntry();

  void setPacks(String id, String text) {
    final line = _line(id);
    final e = entryFor(id);
    var net = e.net;
    if (line.fixedPack && !e.netTyped) {
      final packs = typedQuantity(text);
      net = packs == null ? '' : plain(packsTimesSize(packs, line.packSize!));
    }
    _set(id, LineEntry(packs: text, net: net, netTyped: e.netTyped));
  }

  void setNet(String id, String text) => _set(id, LineEntry(packs: entryFor(id).packs, net: text, netTyped: true));

  void _set(String id, LineEntry entry) =>
      emit(state.copyWith(entries: {...state.entries, id: entry}, failure: () => null));

  /// The quantity typed for [id] (null = not sent).
  String? quantityFor(String id) => typedQuantity(entryFor(id).net);

  /// Less than what is left on the line.
  bool isShort(DispatchLine line) {
    final q = quantityFor(line.id);
    return q != null && toMilli(q) < toMilli(line.pending);
  }

  List<DispatchLine> get shortLines => [
    for (final l in order.lines)
      if (isShort(l)) l,
  ];

  List<SentLine> get sentLines => [
    for (final l in order.lines)
      if (quantityFor(l.id) case final q?)
        SentLine(
          lineId: l.id,
          quantity: q,
          packCount: l.isPack ? typedQuantity(entryFor(l.id).packs) : null,
          complete: !isShort(l) || !state.keepOpen.contains(l.id),
        ),
  ];

  /// "Send rest later" (true) or "Close – no more" (false) for a short line.
  void sendRestLater(String id, {required bool later}) =>
      emit(state.copyWith(keepOpen: later ? {...state.keepOpen, id} : ({...state.keepOpen}..remove(id))));

  void setVehicle(String text) => emit(state.copyWith(vehicleNo: text));

  void next() {
    if (sentLines.isNotEmpty) emit(state.copyWith(step: DispatchStep.check));
  }

  void back() => emit(state.copyWith(step: DispatchStep.form, failure: () => null));

  Future<void> dispatch() async {
    final lines = sentLines;
    if (state.busy || lines.isEmpty) return;
    emit(state.copyWith(busy: true, failure: () => null));
    final result = await _repository.dispatch(
      order: order,
      lines: lines,
      dispatchDate: state.dispatchDate,
      vehicleNo: state.vehicleNo,
      idempotencyKey: state.idempotencyKey,
    );
    switch (result) {
      case Ok(:final value):
        emit(state.copyWith(busy: false, step: DispatchStep.saved, result: value));
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
