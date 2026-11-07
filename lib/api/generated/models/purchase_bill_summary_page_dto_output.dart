// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'purchase_bill_summary_dto_output.dart';

part 'purchase_bill_summary_page_dto_output.freezed.dart';
part 'purchase_bill_summary_page_dto_output.g.dart';

@Freezed()
abstract class PurchaseBillSummaryPageDtoOutput with _$PurchaseBillSummaryPageDtoOutput {
  const factory PurchaseBillSummaryPageDtoOutput({
    required List<PurchaseBillSummaryDtoOutput> items,
    required String? nextCursor,
  }) = _PurchaseBillSummaryPageDtoOutput;
  
  factory PurchaseBillSummaryPageDtoOutput.fromJson(Map<String, Object?> json) => _$PurchaseBillSummaryPageDtoOutputFromJson(json);
}
