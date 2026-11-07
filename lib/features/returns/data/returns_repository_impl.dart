import 'dart:convert';

import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/returns/domain/returns.dart';

class ReturnsRepositoryImpl implements ReturnsRepository {
  ReturnsRepositoryImpl(this._sales, this._drafts);

  final api.SalesClient _sales;
  final DraftStore _drafts;

  @override
  Future<Result<List<ReturnToInspect>>> toInspect() => _run(() async {
    final rows = await _sales.customerReturnsControllerToInspect();
    return [
      for (final r in rows)
        if (returnFromDto(r) case final ret when ret.lines.isNotEmpty) ret,
    ];
  });

  @override
  Future<Result<void>> inspect({
    required ReturnToInspect ret,
    required Map<String, InspectionResult> results,
    required String idempotencyKey,
  }) async {
    final body = inspectBodyFor(results);
    final result = await _post(ret.id, body, idempotencyKey);
    switch (result) {
      case Ok():
        await _drafts.remove(idempotencyKey);
      case Err(:final failure) when failure.kind == FailureKind.network:
        await _drafts.keep(
          Draft(
            id: idempotencyKey,
            kind: DraftKind.inspection,
            title: 'Inspection ${ret.number}',
            subtitle: ret.shop,
            payload: jsonEncode({'returnId': ret.id, 'body': body}),
            createdAt: DateTime.now(),
          ),
        );
      case Err():
    }
    return result;
  }

  /// SEND AGAIN from the Drafts screen: the same body and key as the first try.
  Future<Result<String>> sendDraft(Draft draft) async {
    final payload = jsonDecode(draft.payload) as Map<String, Object?>;
    final body = api.InspectReturnDto.fromJson(payload['body']! as Map<String, Object?>);
    return switch (await _post(payload['returnId']! as String, body, draft.id)) {
      Ok() => const Ok('Inspection saved'),
      Err(:final failure) => Err(failure),
    };
  }

  Future<Result<void>> _post(String id, api.InspectReturnDto body, String key) =>
      _run(() => _sales.customerReturnsControllerInspect(id: id, idempotencyKey: key, body: body));

  static Future<Result<T>> _run<T>(Future<T> Function() call) async {
    try {
      return Ok(await call());
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

ReturnToInspect returnFromDto(api.CustomerReturnDtoOutput r) => ReturnToInspect(
  id: r.id,
  number: r.number ?? 'Return',
  date: r.returnDate,
  shop: r.customer.name,
  notes: r.notes,
  lines: [
    for (final l in r.lines)
      if (l.inspection.json == 'pending')
        ReturnLine(
          id: l.id,
          product: l.product.name,
          stockUnit: l.product.stockUnit,
          quantity: l.quantity,
          packName: l.packUnit?.name,
          packCount: l.packCount,
        ),
  ],
);

api.InspectReturnDto inspectBodyFor(Map<String, InspectionResult> results) => api.InspectReturnDto(
  lines: [
    for (final MapEntry(:key, :value) in results.entries)
      api.Lines19(
        lineId: key,
        result: switch (value) {
          InspectionResult.saleable => api.Result.saleable,
          InspectionResult.damaged => api.Result.damaged,
          InspectionResult.disposed => api.Result.disposed,
        },
      ),
  ],
);
