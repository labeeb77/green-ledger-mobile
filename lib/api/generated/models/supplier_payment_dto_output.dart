// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'allocations2.dart';
import 'splits.dart';
import 'supplier4.dart';
import 'supplier_payment_dto_output_status.dart';

part 'supplier_payment_dto_output.freezed.dart';
part 'supplier_payment_dto_output.g.dart';

@Freezed()
abstract class SupplierPaymentDtoOutput with _$SupplierPaymentDtoOutput {
  const factory SupplierPaymentDtoOutput({
    required String id,
    required String number,
    required Supplier4 supplier,
    required String paymentDate,
    required int total,
    required SupplierPaymentDtoOutputStatus status,
    required String? notes,
    required List<Splits> splits,
    required List<Allocations2> allocations,
    required int unallocated,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _SupplierPaymentDtoOutput;

  factory SupplierPaymentDtoOutput.fromJson(Map<String, Object?> json) => _$SupplierPaymentDtoOutputFromJson(json);
}
