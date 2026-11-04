// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'sales_bill_summary_dto_output_issues_union_variant1_type.dart';
import 'sales_bill_summary_dto_output_issues_union_variant2_type.dart';

part 'sales_bill_summary_dto_output_issues_union.freezed.dart';
part 'sales_bill_summary_dto_output_issues_union.g.dart';

@Freezed()
sealed class SalesBillSummaryDtoOutputIssuesUnion with _$SalesBillSummaryDtoOutputIssuesUnion {
  @JsonSerializable()
  const factory SalesBillSummaryDtoOutputIssuesUnion.variant1({
    required SalesBillSummaryDtoOutputIssuesUnionVariant1Type type,
    required int lineNo,
    required String product,
    required int rate,
    required int minimum,
  }) = SalesBillSummaryDtoOutputIssuesUnionVariant1;
  
  @JsonSerializable()
  const factory SalesBillSummaryDtoOutputIssuesUnion.variant2({
    required SalesBillSummaryDtoOutputIssuesUnionVariant2Type type,
    required int outstanding,
    required int newCredit,
    required int limit,
  }) = SalesBillSummaryDtoOutputIssuesUnionVariant2;
  

  factory SalesBillSummaryDtoOutputIssuesUnion.fromJson(Map<String, Object?> json) =>
      // TODO: No discriminator in OpenAPI spec - you must implement this manually.
      //
      // Inspect the JSON and return the matching variant. Each variant has a fromJson:
      //   SalesBillSummaryDtoOutputIssuesUnionVariantName.fromJson(json)
      //
      // Example pattern (check for unique fields):
      //   json.containsKey('uniqueFieldA') ? SalesBillSummaryDtoOutputIssuesUnionTypeA.fromJson(json) :
      //   json.containsKey('uniqueFieldB') ? SalesBillSummaryDtoOutputIssuesUnionTypeB.fromJson(json) :
      //   SalesBillSummaryDtoOutputIssuesUnionDefault.fromJson(json);
      //
      // IMPORTANT: Keep the => arrow syntax. Converting to a { } body will cause
      // freezed to skip generating toJson/fromJson for this class.
      throw UnimplementedError();

}
