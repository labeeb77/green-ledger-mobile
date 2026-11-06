// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'allocations.dart';
import 'lines4.dart';
import 'purchase_bill_dto_output_payment_status.dart';
import 'purchase_bill_dto_output_status.dart';
import 'supplier3.dart';

part 'purchase_bill_dto_output.freezed.dart';
part 'purchase_bill_dto_output.g.dart';

@Freezed()
abstract class PurchaseBillDtoOutput with _$PurchaseBillDtoOutput {
  const factory PurchaseBillDtoOutput({
    required String id,
    required String number,
    required Supplier3 supplier,
    required DateTime billDate,
    required DateTime dueDate,
    required String? supplierInvoiceNo,
    required int adjustment,
    required int total,
    required int paid,
    required int open,
    required PurchaseBillDtoOutputPaymentStatus paymentStatus,
    required PurchaseBillDtoOutputStatus status,
    required String? notes,
    required DateTime createdAt,
    required String? cancelReason,
    required List<Lines4> lines,
    required List<Allocations> allocations,
  }) = _PurchaseBillDtoOutput;
  
  factory PurchaseBillDtoOutput.fromJson(Map<String, Object?> json) => _$PurchaseBillDtoOutputFromJson(json);
}
