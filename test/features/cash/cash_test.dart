import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/format/formatters.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/cash/data/cash_repository_impl.dart';
import 'package:green_ledger_mobile/features/cash/domain/cash.dart';
import 'package:green_ledger_mobile/features/cash/presentation/bloc/agent_cash_cubit.dart';
import 'package:green_ledger_mobile/features/cash/presentation/bloc/handovers_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockCashRepository extends Mock implements CashRepository;

const offline = AppFailure(kind: FailureKind.network, message: 'No internet');

Handover handover(
  String id, {
  String agentId = 'u-agent',
  HandoverStatus status = HandoverStatus.pending,
  int declared = 500000,
  int? counted,
}) => Handover(
  id: id,
  agentId: agentId,
  agentName: 'Faisal',
  date: '2026-11-07',
  declared: declared,
  status: status,
  counted: counted,
);

const bag = CashBag(
  balance: 500000,
  receipts: [
    BagReceipt(number: 'R-0001', shop: 'Malabar Traders', amount: 300000),
    BagReceipt(number: 'R-0002', shop: 'Fresh Mart', amount: 200000),
  ],
);

void main() {
  test('differences in plain words', () {
    expect(differenceText(0, formatMoney), isNull);
    expect(differenceText(-20000, formatMoney), '₹200 short');
    expect(differenceText(5000, formatMoney), '₹50 extra');
    expect(handover('h', counted: 480000).difference, -20000);
  });

  test('maps a handover', () {
    final h = handoverFromDto(
      api.HandoverDtoOutput.fromJson({
        'id': 'h1',
        'agent': {'id': 'a1', 'name': 'Faisal'},
        'handoverDate': '2026-11-07',
        'declaredAmount': 500000,
        'countedAmount': 480000,
        'difference': -20000,
        'status': 'mismatch',
        'bagBalance': 20000,
        'note': null,
        'confirmedBy': {'id': 'm1', 'name': 'Manager'},
        'confirmedAt': '2026-11-07T10:00:00.000Z',
        'createdAt': '2026-11-07T09:00:00.000Z',
      }),
    );
    expect(
      (h.status, h.declared, h.counted, h.agentName, h.confirmedBy),
      (HandoverStatus.mismatch, 500000, 480000, 'Faisal', 'Manager'),
    );
  });

  group('AgentCashCubit', () {
    late MockCashRepository repository;
    setUp(() => repository = MockCashRepository());

    test('shows only my counted handovers', () async {
      when(repository.myBag).thenAnswer((_) async => const Ok(bag));
      when(repository.handovers).thenAnswer(
        (_) async => Ok([
          handover('mine-pending'),
          handover('other', agentId: 'u-other', status: HandoverStatus.confirmed),
          handover('mine', status: HandoverStatus.mismatch, counted: 480000),
        ]),
      );
      final cubit = AgentCashCubit(repository, 'u-agent');
      await cubit.load();
      expect(cubit.state.bag?.balance, 500000);
      expect([for (final h in cubit.state.recent) h.id], ['mine']);
    });

    blocTest<AgentCashCubit, AgentCashState>(
      'acceptance step 6: HAND OVER sends the full bag once; offline keeps the key',
      build: () {
        when(repository.myBag).thenAnswer((_) async => const Ok(bag));
        when(repository.handovers).thenAnswer((_) async => const Ok([]));
        when(() => repository.handOver(idempotencyKey: any(named: 'idempotencyKey')))
            .thenAnswer((_) async => const Err(offline));
        return AgentCashCubit(repository, 'u-agent', idempotencyKey: 'k1');
      },
      act: (cubit) async {
        await cubit.load();
        await cubit.handOver();
        expect(cubit.state.idempotencyKey, 'k1');
        when(() => repository.handOver(idempotencyKey: any(named: 'idempotencyKey'))).thenAnswer((_) async {
          when(repository.myBag)
              .thenAnswer((_) async => Ok(CashBag(balance: 500000, receipts: bag.receipts, pending: handover('h1'))));
          return Ok(handover('h1'));
        });
        await cubit.handOver();
        await cubit.handOver(); // waiting for the manager: nothing more to send
      },
      verify: (cubit) {
        verify(() => repository.handOver(idempotencyKey: 'k1')).called(2);
        expect(cubit.state.bag?.pending?.id, 'h1');
        expect(cubit.state.idempotencyKey, isNot('k1'));
      },
    );
  });

  group('HandoversCubit', () {
    late MockCashRepository repository;
    setUp(() {
      repository = MockCashRepository();
      when(repository.handovers).thenAnswer(
        (_) async =>
            Ok([handover('new'), handover('done', status: HandoverStatus.confirmed, counted: 500000), handover('old')]),
      );
    });

    test('pending oldest first; counted newest first', () async {
      final cubit = HandoversCubit(repository);
      await cubit.load();
      expect([for (final h in cubit.state.pending) h.id], ['old', 'new']);
      expect([for (final h in cubit.state.recent) h.id], ['done']);
      expect(cubit.state.countedFor(cubit.state.pending.first), 500000); // starts at the declared amount
    });

    test('CONFIRM sends the typed count; a retry after a network failure reuses the key', () async {
      when(
        () => repository.confirm(
          id: any(named: 'id'),
          counted: any(named: 'counted'),
          idempotencyKey: any(named: 'idempotencyKey'),
        ),
      ).thenAnswer((_) async => const Err(offline));
      final cubit = HandoversCubit(repository);
      await cubit.load();
      final old = cubit.state.pending.first;
      cubit.setCounted(old.id, 480000);
      await cubit.confirm(old);
      expect(cubit.state.failures[old.id], offline);
      await cubit.confirm(old);
      final keys = verify(
        () => repository.confirm(
          id: 'old',
          counted: 480000,
          idempotencyKey: captureAny(named: 'idempotencyKey'),
        ),
      ).captured;
      expect(keys, hasLength(2));
      expect(keys.toSet(), hasLength(1));
    });
  });
}
