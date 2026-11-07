// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'created_by4.dart';
import 'customer.dart';
import 'sales_bill_summary_dto_output_issues_union.dart';
import 'sales_bill_summary_dto_output_payment_status.dart';
import 'sales_bill_summary_dto_output_status.dart';

part 'sales_bill_summary_dto_output.freezed.dart';
part 'sales_bill_summary_dto_output.g.dart';

@Freezed()
abstract class SalesBillSummaryDtoOutput with _$SalesBillSummaryDtoOutput {
  const factory SalesBillSummaryDtoOutput({
    required String id,
    required String? number,
    required String billDate,
    required String dueDate,
    required Customer customer,
    required int subtotal,
    required int rounding,
    required int total,
    required int paid,
    required int open,
    required SalesBillSummaryDtoOutputPaymentStatus paymentStatus,
    required SalesBillSummaryDtoOutputStatus status,
    required List<SalesBillSummaryDtoOutputIssuesUnion> issues,
    required String? approvalId,
    required String? notes,
    required CreatedBy4? createdBy,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _SalesBillSummaryDtoOutput;

  factory SalesBillSummaryDtoOutput.fromJson(Map<String, Object?> json) => _$SalesBillSummaryDtoOutputFromJson(json);
}
