import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/visits/data/visit_repository_impl.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/drafts.dart';

class _MockClient extends Mock implements api.VisitNotesClient;

class _MockNote extends Mock implements api.VisitNoteDtoOutput;

void main() {
  setUpAll(
    () => registerFallbackValue(
      const api.CreateVisitNoteDto(customerId: '', outcome: api.CreateVisitNoteDtoOutcome.paid),
    ),
  );

  test('offline: kept as a draft; SEND AGAIN sends the same body (with the visit date) and key', () async {
    final client = _MockClient();
    final drafts = MemoryDraftStore();
    final repository = VisitRepositoryImpl(client, drafts);
    when(
      () => client.visitNotesControllerCreate(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenThrow(DioException(requestOptions: RequestOptions(), type: DioExceptionType.connectionTimeout));

    await repository.save(
      customerId: 'c1',
      shopName: 'Malabar Traders',
      visitDate: '2026-11-07',
      outcome: VisitOutcome.promised,
      promiseDate: '2026-11-14',
      idempotencyKey: 'k1',
    );
    final draft = drafts.drafts.single;
    expect(draft.title, 'Visit · Promised');
    expect(draft.kind, DraftKind.visit);

    when(
      () => client.visitNotesControllerCreate(
        idempotencyKey: any(named: 'idempotencyKey'),
        body: any(named: 'body'),
      ),
    ).thenAnswer((_) async => _MockNote());
    expect(await repository.sendDraft(draft), isA<Ok<String>>());

    final bodies = verify(
      () => client.visitNotesControllerCreate(
        idempotencyKey: 'k1',
        body: captureAny(named: 'body'),
      ),
    ).captured.cast<api.CreateVisitNoteDto>();
    expect(jsonEncode(bodies[1]), jsonEncode(bodies[0]));
    expect(bodies[0].visitDate, '2026-11-07');
  });
}
