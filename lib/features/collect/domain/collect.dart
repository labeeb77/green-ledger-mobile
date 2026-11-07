import 'package:green_ledger_mobile/core/result.dart';

enum PaymentMethod {
  cash('Cash'),
  upi('UPI'),
  bank('Bank'),
  cheque('Cheque');

  PaymentMethod(this.label);

  final String label;
}

/// A money account a payment can go into (UPI and bank need one; cash goes to the
/// agent's bag and cheques to cheques-in-hand on the server).
class MoneyAccount {
  const MoneyAccount({required this.id, required this.name, required this.method});

  final String id;
  final String name;

  /// The method this account takes (an UPI or a bank account).
  final PaymentMethod method;
}

/// The shop being collected from.
class CollectTarget {
  const CollectTarget({required this.customerId, required this.name, required this.due});

  final String customerId;
  final String name;

  /// Paise owed now.
  final int due;
}

/// One payment of a collection (a split). [amount] is paise.
class PaymentLine {
  const PaymentLine({
    required this.method,
    this.amount = 0,
    this.accountId,
    this.reference = '',
    this.screenshotPath,
    this.chequeNo = '',
    this.chequeBank = '',
    this.chequeDate,
  });

  final PaymentMethod method;
  final int amount;
  final String? accountId;

  /// UPI or bank reference (optional).
  final String reference;

  /// A UPI screenshot picked on the phone, uploaded when saving.
  final String? screenshotPath;
  final String chequeNo;
  final String chequeBank;

  /// ISO date; null = today.
  final String? chequeDate;

  PaymentLine copyWith({
    int? amount,
    String? accountId,
    String? reference,
    String? Function()? screenshotPath,
    String? chequeNo,
    String? chequeBank,
    String? Function()? chequeDate,
  }) => PaymentLine(
    method: method,
    amount: amount ?? this.amount,
    accountId: accountId ?? this.accountId,
    reference: reference ?? this.reference,
    screenshotPath: screenshotPath == null ? this.screenshotPath : screenshotPath(),
    chequeNo: chequeNo ?? this.chequeNo,
    chequeBank: chequeBank ?? this.chequeBank,
    chequeDate: chequeDate == null ? this.chequeDate : chequeDate(),
  );
}

/// A bill the collection settles, from the server's preview.
class SettledBill {
  const SettledBill({required this.number, required this.amount, required this.full});

  final String number;
  final int amount;

  /// The whole open amount is settled.
  final bool full;
}

/// How the server would settle the amount: oldest bills first, any extra as advance.
class AllocationPreview {
  const AllocationPreview({required this.bills, required this.advance});

  final List<SettledBill> bills;
  final int advance;
}

class SavedReceipt {
  const SavedReceipt({required this.id, required this.number, required this.total});

  final String id;
  final String number;
  final int total;
}

abstract interface class CollectRepository {
  /// UPI and bank accounts the user may collect into.
  Future<Result<List<MoneyAccount>>> accounts();

  Future<Result<AllocationPreview>> preview({required String customerId, required int amount});

  /// Uploads the screenshots, then posts the receipt with [idempotencyKey] (reused on
  /// every retry of this collection, so it never posts twice).
  Future<Result<SavedReceipt>> save({
    required String customerId,
    required List<PaymentLine> lines,
    required String idempotencyKey,
  });
}

/// Whole rupees typed on the numpad → paise (`'5000'` → 500000).
int rupeesToPaise(String rupees) => rupees.isEmpty ? 0 : int.parse(rupees) * 100;

/// Paise → whole rupees for the numpad (`500000` → `'5000'`, 0 → empty).
String paiseToRupees(int paise) => paise == 0 ? '' : '${paise ~/ 100}';

/// What blocks NEXT on the form, in plain words; null when the collection can be checked.
String? collectProblem(List<PaymentLine> lines) {
  final used = lines.where((l) => l.amount > 0).toList();
  if (used.isEmpty) return 'Enter the amount collected';
  for (final l in used) {
    if ((l.method == PaymentMethod.upi || l.method == PaymentMethod.bank) && l.accountId == null) {
      return 'Choose the ${l.method.label} account';
    }
    if (l.method == PaymentMethod.cheque && (l.chequeNo.trim().isEmpty || l.chequeBank.trim().isEmpty)) {
      return 'Enter the cheque number and bank';
    }
  }
  return null;
}
