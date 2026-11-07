// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'sales_bill_summary_dto_output.dart';

part 'sales_bill_summary_page_dto_output.freezed.dart';
part 'sales_bill_summary_page_dto_output.g.dart';

@Freezed()
abstract class SalesBillSummaryPageDtoOutput with _$SalesBillSummaryPageDtoOutput {
  const factory SalesBillSummaryPageDtoOutput({
    required List<SalesBillSummaryDtoOutput> items,
    required int total,
    required String? nextCursor,
  }) = _SalesBillSummaryPageDtoOutput;
  
  factory SalesBillSummaryPageDtoOutput.fromJson(Map<String, Object?> json) => _$SalesBillSummaryPageDtoOutputFromJson(json);
}
