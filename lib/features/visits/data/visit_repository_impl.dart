import 'dart:convert';

import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';

class VisitRepositoryImpl implements VisitRepository {
  VisitRepositoryImpl(this._client, this._drafts);

  final api.VisitNotesClient _client;
  final DraftStore _drafts;

  @override
  Future<Result<void>> save({
    required String customerId,
    required String shopName,
    required String visitDate,
    required VisitOutcome outcome,
    required String idempotencyKey,
    String? promiseDate,
    String note = '',
  }) async {
    final body = visitNoteFor(
      customerId: customerId,
      visitDate: visitDate,
      outcome: outcome,
      promiseDate: promiseDate,
      note: note,
    );
    final result = await _post(body, idempotencyKey);
    switch (result) {
      case Ok():
        await _drafts.remove(idempotencyKey);
      case Err(:final failure) when failure.kind == FailureKind.network:
        await _drafts.keep(
          Draft(
            id: idempotencyKey,
            kind: DraftKind.visit,
            title: 'Visit · ${outcome.label}',
            subtitle: shopName,
            payload: jsonEncode(body),
            createdAt: DateTime.now(),
          ),
        );
      case Err():
    }
    return result;
  }

  /// SEND AGAIN from the Drafts screen: the same body and key as the first try.
  Future<Result<String>> sendDraft(Draft draft) async {
    final body = api.CreateVisitNoteDto.fromJson(jsonDecode(draft.payload) as Map<String, Object?>);
    return switch (await _post(body, draft.id)) {
      Ok() => const Ok('Visit saved'),
      Err(:final failure) => Err(failure),
    };
  }

  Future<Result<void>> _post(api.CreateVisitNoteDto body, String idempotencyKey) async {
    try {
      await _client.visitNotesControllerCreate(idempotencyKey: idempotencyKey, body: body);
      return const Ok(null);
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

/// The request body.
api.CreateVisitNoteDto visitNoteFor({
  required String customerId,
  required String visitDate,
  required VisitOutcome outcome,
  String? promiseDate,
  String note = '',
}) => api.CreateVisitNoteDto(
  customerId: customerId,
  visitDate: visitDate,
  outcome: switch (outcome) {
    VisitOutcome.paid => api.CreateVisitNoteDtoOutcome.paid,
    VisitOutcome.promised => api.CreateVisitNoteDtoOutcome.promised,
    VisitOutcome.notAvailable => api.CreateVisitNoteDtoOutcome.notAvailable,
    VisitOutcome.shopClosed => api.CreateVisitNoteDtoOutcome.shopClosed,
  },
  promiseDate: outcome == VisitOutcome.promised ? promiseDate : null,
  note: note.trim().isEmpty ? null : note.trim(),
);
