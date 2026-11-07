import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/collect/data/collect_repository_impl.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:green_ledger_mobile/features/collect/presentation/bloc/collect_cubit.dart';
import 'package:green_ledger_mobile/features/documents/domain/documents.dart';
import 'package:mocktail/mocktail.dart';

class _MockRepository extends Mock implements CollectRepository;

class _MockDocuments extends Mock implements DocumentsRepository;

const target = CollectTarget(customerId: 'c1', name: 'Malabar Traders', due: 1300000);
const shopUpi = MoneyAccount(id: 'upi1', name: 'Shop UPI', method: PaymentMethod.upi);
const preview = AllocationPreview(
  bills: [
    SettledBill(number: 'B-0012', amount: 500000, full: true),
    SettledBill(number: 'B-0015', amount: 300000, full: false),
  ],
  advance: 0,
);
const _offline = AppFailure(kind: FailureKind.network, message: 'No internet');
const _refused = AppFailure(kind: FailureKind.rejected, message: 'Payment 2: choose a valid account for upi');

void main() {
  setUpAll(() => registerFallbackValue(<PaymentLine>[]));

  test('rupees on the numpad are whole rupees in paise', () {
    expect(rupeesToPaise(''), 0);
    expect(rupeesToPaise('5000'), 500000);
    expect(paiseToRupees(500000), '5000');
    expect(paiseToRupees(0), '');
  });

  test('says what blocks the collection in plain words', () {
    expect(collectProblem(const [PaymentLine(method: PaymentMethod.cash)]), 'Enter the amount collected');
    expect(collectProblem(const [PaymentLine(method: PaymentMethod.upi, amount: 100)]), 'Choose the UPI account');
    expect(
      collectProblem(const [PaymentLine(method: PaymentMethod.cheque, amount: 100, chequeNo: '123')]),
      'Enter the cheque number and bank',
    );
    expect(
      collectProblem(const [
        PaymentLine(method: PaymentMethod.cash, amount: 500000),
        PaymentLine(method: PaymentMethod.upi), // unused rows don't need an account
      ]),
      isNull,
    );
  });

  test('builds the splits the API expects', () {
    final upi = splitFor(
      const PaymentLine(method: PaymentMethod.upi, amount: 300000, accountId: 'upi1', reference: ' 4821 '),
      screenshotFileId: 'f1',
    );
    expect(upi.toJson(), containsPair('reference', '4821'));
    expect(upi.toJson(), containsPair('screenshotFileId', 'f1'));
    final bank = splitFor(const PaymentLine(method: PaymentMethod.bank, amount: 100, accountId: 'b1'));
    expect(bank.method, api.Method.bankTransfer);
    expect(bank.reference, isNull);
    final cheque = splitFor(
      const PaymentLine(
        method: PaymentMethod.cheque,
        amount: 100,
        chequeNo: '000123',
        chequeBank: 'Federal',
        chequeDate: '2026-11-20',
      ),
    );
    // A date-only string, not a DateTime (the backend refuses "…T00:00:00.000").
    expect(cheque.toJson(), containsPair('chequeDate', '2026-11-20'));
  });

  test('maps the preview: oldest bills, full or part, and any advance', () {
    final p = previewFromDto(
      api.ReceiptAllocationPreviewDtoOutput.fromJson({
        'openBills': [
          {
            'id': 'b1',
            'number': 'B-0012',
            'date': '2026-10-01',
            'dueDate': '2026-10-08',
            'total': 500000,
            'open': 500000,
          },
          {
            'id': 'b2',
            'number': 'B-0015',
            'date': '2026-10-10',
            'dueDate': '2026-10-17',
            'total': 800000,
            'open': 800000,
          },
        ],
        'allocations': [
          {'billId': 'b1', 'amount': 500000},
          {'billId': 'b2', 'amount': 300000},
        ],
        'advance': 200000,
        'existingAdvance': 0,
      }),
    );
    expect(p.bills.map((b) => (b.number, b.full)), [('B-0012', true), ('B-0015', false)]);
    expect(p.advance, 200000);
  });

  late _MockRepository repository;
  late _MockDocuments documents;
  setUp(() {
    repository = _MockRepository();
    documents = _MockDocuments();
    when(() => repository.accounts()).thenAnswer((_) async => const Ok([shopUpi]));
    when(
      () => repository.preview(
        customerId: any(named: 'customerId'),
        amount: any(named: 'amount'),
      ),
    ).thenAnswer((_) async => const Ok(preview));
  });

  CollectCubit build() => CollectCubit(repository, documents, target, idempotencyKey: 'key-1');

  blocTest<CollectCubit, CollectState>(
    'a single UPI account is chosen; NEXT moves cash → UPI → Check with the server preview',
    build: build,
    act: (cubit) async {
      await cubit.start();
      cubit.setAmount(0, 500000);
      await cubit.next();
      cubit.setAmount(1, 300000);
      await cubit.next();
    },
    verify: (cubit) {
      expect(cubit.state.lines[1].accountId, 'upi1');
      expect(cubit.state.step, CollectStep.check);
      expect(cubit.state.total, 800000);
      verify(() => repository.preview(customerId: 'c1', amount: 800000)).called(1);
    },
  );

  blocTest<CollectCubit, CollectState>(
    'a network failure keeps the key for SEND AGAIN; a refusal starts a new one',
    build: build,
    act: (cubit) async {
      await cubit.start();
      cubit.setAmount(0, 500000);
      await cubit.check();
      when(
        () => repository.save(
          customerId: any(named: 'customerId'),
          lines: any(named: 'lines'),
          idempotencyKey: any(named: 'idempotencyKey'),
        ),
      ).thenAnswer((_) async => const Err(_offline));
      await cubit.save();
      expect(cubit.state.idempotencyKey, 'key-1');
      when(
        () => repository.save(
          customerId: any(named: 'customerId'),
          lines: any(named: 'lines'),
          idempotencyKey: any(named: 'idempotencyKey'),
        ),
      ).thenAnswer((_) async => const Err(_refused));
      await cubit.save();
    },
    verify: (cubit) {
      expect(cubit.state.idempotencyKey, isNot('key-1'));
      expect(cubit.state.failure, _refused);
      verify(
        () => repository.save(
          customerId: 'c1',
          lines: any(named: 'lines'),
          idempotencyKey: 'key-1',
        ),
      ).called(2);
    },
  );

  blocTest<CollectCubit, CollectState>(
    'saves once and shows the receipt number',
    build: build,
    act: (cubit) async {
      await cubit.start();
      cubit.setAmount(0, 500000);
      await cubit.check();
      when(
        () => repository.save(
          customerId: any(named: 'customerId'),
          lines: any(named: 'lines'),
          idempotencyKey: any(named: 'idempotencyKey'),
        ),
      ).thenAnswer((_) async => const Ok(SavedReceipt(id: 'r1', number: 'R-0042', total: 500000)));
      await cubit.save();
    },
    verify: (cubit) {
      expect(cubit.state.step, CollectStep.saved);
      expect(cubit.state.saved?.number, 'R-0042');
    },
  );
}
