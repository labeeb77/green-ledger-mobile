// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'purchase_bill_summary_dto_output_payment_status.dart';
import 'purchase_bill_summary_dto_output_status.dart';
import 'supplier2.dart';

part 'purchase_bill_summary_dto_output.freezed.dart';
part 'purchase_bill_summary_dto_output.g.dart';

@Freezed()
abstract class PurchaseBillSummaryDtoOutput with _$PurchaseBillSummaryDtoOutput {
  const factory PurchaseBillSummaryDtoOutput({
    required String id,
    required String number,
    required Supplier2 supplier,
    required String billDate,
    required String dueDate,
    required String? supplierInvoiceNo,
    required int adjustment,
    required int total,
    required int paid,
    required int open,
    required PurchaseBillSummaryDtoOutputPaymentStatus paymentStatus,
    required PurchaseBillSummaryDtoOutputStatus status,
    required String? notes,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _PurchaseBillSummaryDtoOutput;

  factory PurchaseBillSummaryDtoOutput.fromJson(Map<String, Object?> json) =>
      _$PurchaseBillSummaryDtoOutputFromJson(json);
}
