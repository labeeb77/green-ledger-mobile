// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'allocations6.dart';
import 'collected_by.dart';
import 'customer3.dart';
import 'customer_receipt_dto_output_status.dart';
import 'splits3.dart';

part 'customer_receipt_dto_output.freezed.dart';
part 'customer_receipt_dto_output.g.dart';

@Freezed()
abstract class CustomerReceiptDtoOutput with _$CustomerReceiptDtoOutput {
  const factory CustomerReceiptDtoOutput({
    required String id,
    required String number,
    required Customer3 customer,
    required String receiptDate,
    required CollectedBy collectedBy,
    required int total,
    required CustomerReceiptDtoOutputStatus status,
    required String? notes,
    required List<Splits3> splits,
    required List<Allocations6> allocations,
    required int unallocated,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _CustomerReceiptDtoOutput;

  factory CustomerReceiptDtoOutput.fromJson(Map<String, Object?> json) => _$CustomerReceiptDtoOutputFromJson(json);
}
