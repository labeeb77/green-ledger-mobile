import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/drafts/drafts_cubit.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';

import '../helpers/drafts.dart';

Draft visit(String id) => Draft(
  id: id,
  kind: DraftKind.visit,
  title: 'Visit · Shop closed',
  subtitle: 'Malabar Traders',
  payload: '{}',
  createdAt: DateTime.utc(2026, 11, 7, 5),
);

void main() {
  test('SEND AGAIN: saved drafts go, offline ones stay, refusals keep the reason', () async {
    final store = MemoryDraftStore([visit('ok'), visit('offline'), visit('refused')]);
    final cubit = DraftsCubit(store, {
      DraftKind.visit: (draft) async => switch (draft.id) {
        'ok' => const Ok('Visit saved'),
        'offline' => Err(
          AppFailure.from(DioException(requestOptions: RequestOptions(), type: DioExceptionType.connectionError)),
        ),
        _ => const Err(AppFailure(kind: FailureKind.rejected, message: 'Visit date is too far back')),
      },
    });
    await cubit.watch();
    await Future<void>.delayed(Duration.zero);
    expect(cubit.state.drafts, hasLength(3));

    for (final d in [...cubit.state.drafts]) {
      await cubit.send(d);
    }
    await Future<void>.delayed(Duration.zero);
    expect(cubit.state.sending, isEmpty);
    expect(
      {for (final d in cubit.state.drafts) d.id: d.lastError},
      {'offline': 'No internet. Your entry is kept.', 'refused': 'Visit date is too far back'},
    );

    await cubit.delete(cubit.state.drafts.first);
    await Future<void>.delayed(Duration.zero);
    expect([for (final d in cubit.state.drafts) d.id], ['refused']);
    await cubit.close();
  });

  test('the last save is announced once', () async {
    final cubit = DraftsCubit(MemoryDraftStore([visit('ok')]), {DraftKind.visit: (_) async => const Ok('Visit saved')});
    await cubit.watch();
    await Future<void>.delayed(Duration.zero);
    await cubit.send(cubit.state.drafts.single);
    expect(cubit.state.lastSaved, 'Visit saved');
    await cubit.close();
  });
}
