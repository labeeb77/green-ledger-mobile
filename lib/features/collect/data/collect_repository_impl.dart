import 'dart:io';

import 'package:green_ledger_mobile/api/generated/export.dart' as api;
import 'package:green_ledger_mobile/core/failure.dart';
import 'package:green_ledger_mobile/core/result.dart';
import 'package:green_ledger_mobile/features/collect/domain/collect.dart';
import 'package:uuid/uuid.dart';

class CollectRepositoryImpl implements CollectRepository {
  CollectRepositoryImpl({required this._collections, required this._accounts, required this._files});

  final api.CollectionsClient _collections;
  final api.MoneyAccountsClient _accounts;
  final api.FilesClient _files;

  @override
  Future<Result<List<MoneyAccount>>> accounts() async {
    try {
      final rows = await _accounts.moneyAccountsControllerList();
      return Ok([
        for (final a in rows)
          if (a.active)
            if (_methodOf(a.type) case final method?) MoneyAccount(id: a.id, name: a.name, method: method),
      ]);
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  static PaymentMethod? _methodOf(api.MoneyAccountDtoOutputType type) => switch (type) {
    api.MoneyAccountDtoOutputType.upi => PaymentMethod.upi,
    api.MoneyAccountDtoOutputType.bank => PaymentMethod.bank,
    _ => null,
  };

  @override
  Future<Result<AllocationPreview>> preview({required String customerId, required int amount}) async {
    try {
      return Ok(
        previewFromDto(await _collections.customerReceiptsControllerPreview(customerId: customerId, amount: amount)),
      );
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }

  @override
  Future<Result<SavedReceipt>> save({
    required String customerId,
    required List<PaymentLine> lines,
    required String idempotencyKey,
  }) async {
    try {
      final splits = <api.Splits4>[];
      for (final (i, line) in lines.where((l) => l.amount > 0).indexed) {
        String? screenshotId;
        if (line.screenshotPath case final path?) {
          // A key derived from the collection's key, so a retry never uploads twice.
          final file = await _files.uploadsControllerUpload(
            kind: api.Kind.upiScreenshot,
            idempotencyKey: const Uuid().v5(idempotencyKey, 'screenshot-$i'),
            file: File(path),
          );
          screenshotId = file.id;
        }
        splits.add(splitFor(line, screenshotFileId: screenshotId));
      }
      final receipt = await _collections.customerReceiptsControllerCreate(
        idempotencyKey: idempotencyKey,
        body: api.CreateCustomerReceiptDto(customerId: customerId, splits: splits),
      );
      return Ok(SavedReceipt(id: receipt.id, number: receipt.number, total: receipt.total));
    } on Object catch (e) {
      return Err(AppFailure.from(e));
    }
  }
}

AllocationPreview previewFromDto(api.ReceiptAllocationPreviewDtoOutput p) {
  final bills = {for (final b in p.openBills) b.id: b};
  return AllocationPreview(
    bills: [
      for (final a in p.allocations)
        if (bills[a.billId] case final bill?)
          SettledBill(number: bill.number, amount: a.amount, full: a.amount >= bill.open),
    ],
    advance: p.advance,
  );
}

api.Splits4 splitFor(PaymentLine line, {String? screenshotFileId}) {
  String? text(String v) => v.trim().isEmpty ? null : v.trim();
  return switch (line.method) {
    PaymentMethod.cash => api.Splits4(method: api.Method.cash, amount: line.amount),
    PaymentMethod.upi => api.Splits4(
      method: api.Method.upi,
      amount: line.amount,
      accountId: line.accountId,
      reference: text(line.reference),
      screenshotFileId: screenshotFileId,
    ),
    PaymentMethod.bank => api.Splits4(
      method: api.Method.bankTransfer,
      amount: line.amount,
      accountId: line.accountId,
      reference: text(line.reference),
    ),
    PaymentMethod.cheque => api.Splits4(
      method: api.Method.cheque,
      amount: line.amount,
      chequeNo: text(line.chequeNo),
      chequeBank: text(line.chequeBank),
      chequeDate: line.chequeDate,
    ),
  };
}
