// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'allocations5.dart';
import 'created_by5.dart';
import 'customer2.dart';
import 'lines13.dart';
import 'sales_bill_dto_output_issues_union.dart';
import 'sales_bill_dto_output_payment_status.dart';
import 'sales_bill_dto_output_status.dart';

part 'sales_bill_dto_output.freezed.dart';
part 'sales_bill_dto_output.g.dart';

@Freezed()
abstract class SalesBillDtoOutput with _$SalesBillDtoOutput {
  const factory SalesBillDtoOutput({
    required String id,
    required String? number,
    required String billDate,
    required String dueDate,
    required Customer2 customer,
    required int subtotal,
    required int rounding,
    required int total,
    required int paid,
    required int open,
    required SalesBillDtoOutputPaymentStatus paymentStatus,
    required SalesBillDtoOutputStatus status,
    required List<SalesBillDtoOutputIssuesUnion> issues,
    required String? approvalId,
    required String? notes,
    required CreatedBy5? createdBy,
    required DateTime createdAt,
    required String? cancelReason,
    required List<Lines13> lines,
    required List<Allocations5> allocations,
    required List<String> warnings,
  }) = _SalesBillDtoOutput;

  factory SalesBillDtoOutput.fromJson(Map<String, Object?> json) => _$SalesBillDtoOutputFromJson(json);
}
