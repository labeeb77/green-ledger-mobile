import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/drafts/draft.dart';
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/visits/data/visit_repository_impl.dart';
import 'package:green_ledger_mobile/features/visits/domain/visit.dart';
import 'package:green_ledger_mobile/features/visits/presentation/bloc/visit_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockVisitRepository extends Mock implements VisitRepository;

/// Wednesday 11 Nov 2026, 10:00 in India.
final wednesday = DateTime.utc(2026, 11, 11, 4, 30);
const _offline = AppFailure(kind: FailureKind.network, message: 'No internet');
const _refused = AppFailure(kind: FailureKind.rejected, message: 'promiseDate: required');

void stubSave(MockVisitRepository repository, Result<void> result) => when(
  () => repository.save(
    customerId: any(named: 'customerId'),
    shopName: any(named: 'shopName'),
    visitDate: any(named: 'visitDate'),
    outcome: any(named: 'outcome'),
    idempotencyKey: any(named: 'idempotencyKey'),
    promiseDate: any(named: 'promiseDate'),
    note: any(named: 'note'),
  ),
).thenAnswer((_) async => result);

void main() {
  setUpAll(() => registerFallbackValue(VisitOutcome.paid));

  group('promise dates', () {
    final wed = DateTime.utc(2026, 11, 11);
    test('Tomorrow is the next day', () {
      expect(promiseDateFor(PromiseChoice.tomorrow, wed), DateTime.utc(2026, 11, 12));
    });
    test('This week is the coming Saturday', () {
      expect(promiseDateFor(PromiseChoice.thisWeek, wed), DateTime.utc(2026, 11, 14));
      expect(promiseDateFor(PromiseChoice.thisWeek, DateTime.utc(2026, 11, 13)), DateTime.utc(2026, 11, 14));
    });
    test('This week on Saturday or Sunday is tomorrow, never the past', () {
      expect(promiseDateFor(PromiseChoice.thisWeek, DateTime.utc(2026, 11, 14)), DateTime.utc(2026, 11, 15));
      expect(promiseDateFor(PromiseChoice.thisWeek, DateTime.utc(2026, 11, 15)), DateTime.utc(2026, 11, 16));
    });
  });

  test('says what blocks SAVE in plain words', () {
    final today = DateTime.utc(2026, 11, 11);
    expect(visitProblem(outcome: null, promiseDate: null, today: today), 'Choose what happened');
    expect(visitProblem(outcome: VisitOutcome.shopClosed, promiseDate: null, today: today), isNull);
    expect(visitProblem(outcome: VisitOutcome.promised, promiseDate: null, today: today), 'Choose when they will pay');
    expect(
      visitProblem(outcome: VisitOutcome.promised, promiseDate: DateTime.utc(2026, 11, 10), today: today),
      'The promise date can’t be before today',
    );
    expect(visitProblem(outcome: VisitOutcome.promised, promiseDate: today, today: today), isNull);
  });

  test('builds the body: promise date only when promised, trimmed note or none', () {
    final promised = visitNoteFor(
      customerId: 'c1',
      visitDate: '2026-11-11',
      outcome: VisitOutcome.promised,
      promiseDate: '2026-11-14',
      note: ' after Friday market ',
    );
    expect(promised.outcome, api.CreateVisitNoteDtoOutcome.promised);
    expect(promised.toJson(), containsPair('promiseDate', '2026-11-14'));
    expect(promised.toJson(), containsPair('note', 'after Friday market'));
    expect(promised.visitDate, '2026-11-11');

    final closed = visitNoteFor(
      customerId: 'c1',
      visitDate: '2026-11-11',
      outcome: VisitOutcome.shopClosed,
      promiseDate: '2026-11-14',
      note: ' ',
    );
    expect(closed.outcome, api.CreateVisitNoteDtoOutcome.shopClosed);
    expect(closed.promiseDate, isNull);
    expect(closed.note, isNull);
  });

  group('VisitCubit', () {
    late MockVisitRepository repository;
    setUp(() => repository = MockVisitRepository());

    test('promised → This week → save sends Saturday', () async {
      stubSave(repository, const Ok(null));
      final cubit = VisitCubit(repository, 'c1', 'Malabar Traders', now: wednesday, idempotencyKey: 'k1')
        ..choose(VisitOutcome.promised);
      expect(cubit.state.problem, 'Choose when they will pay');
      cubit
        ..promise(PromiseChoice.thisWeek)
        ..setNote('Will pay after market');
      await cubit.save();
      expect(cubit.state.saved, isTrue);
      verify(
        () => repository.save(
          customerId: 'c1',
          shopName: any(named: 'shopName'),
          visitDate: any(named: 'visitDate'),
          outcome: VisitOutcome.promised,
          idempotencyKey: 'k1',
          promiseDate: '2026-11-14',
          note: 'Will pay after market',
        ),
      ).called(1);
    });

    test('changing the outcome away from Promised drops the date', () {
      final cubit = VisitCubit(repository, 'c1', 'Malabar Traders', now: wednesday)
        ..choose(VisitOutcome.promised)
        ..promise(PromiseChoice.tomorrow)
        ..choose(VisitOutcome.notAvailable);
      expect(cubit.state.promiseDate, isNull);
      expect(cubit.state.promiseChoice, isNull);
    });

    test('a picked date is kept as a date', () {
      final cubit = VisitCubit(repository, 'c1', 'Malabar Traders', now: wednesday)
        ..choose(VisitOutcome.promised)
        ..pickDate(DateTime(2026, 11, 20));
      expect(cubit.state.promiseDate, DateTime.utc(2026, 11, 20));
      expect(cubit.state.promiseChoice, PromiseChoice.pick);
    });

    blocTest<VisitCubit, VisitState>(
      'a network failure keeps the key, so SEND AGAIN records the visit once',
      build: () {
        stubSave(repository, const Err(_offline));
        return VisitCubit(repository, 'c1', 'Malabar Traders', now: wednesday, idempotencyKey: 'k1')
          ..choose(VisitOutcome.shopClosed);
      },
      act: (cubit) => cubit.save(),
      verify: (cubit) {
        expect(cubit.state.failure, draftKept);
        expect(cubit.state.idempotencyKey, 'k1');
        expect(cubit.state.saved, isFalse);
      },
    );

    blocTest<VisitCubit, VisitState>(
      'a refusal takes a new key for the next try',
      build: () {
        stubSave(repository, const Err(_refused));
        return VisitCubit(repository, 'c1', 'Malabar Traders', now: wednesday, idempotencyKey: 'k1')
          ..choose(VisitOutcome.paid);
      },
      act: (cubit) => cubit.save(),
      verify: (cubit) {
        expect(cubit.state.failure, _refused);
        expect(cubit.state.idempotencyKey, isNot('k1'));
      },
    );

    test('does not save without an outcome', () async {
      await VisitCubit(repository, 'c1', 'Malabar Traders', now: wednesday).save();
      verifyNever(
        () => repository.save(
          customerId: any(named: 'customerId'),
          shopName: any(named: 'shopName'),
          visitDate: any(named: 'visitDate'),
          outcome: any(named: 'outcome'),
          idempotencyKey: any(named: 'idempotencyKey'),
          promiseDate: any(named: 'promiseDate'),
          note: any(named: 'note'),
        ),
      );
    });
  });
}
