// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'sales_bill_dto_output_issues_union_variant1_type.dart';
import 'sales_bill_dto_output_issues_union_variant2_type.dart';

part 'sales_bill_dto_output_issues_union.freezed.dart';
part 'sales_bill_dto_output_issues_union.g.dart';

@Freezed()
sealed class SalesBillDtoOutputIssuesUnion with _$SalesBillDtoOutputIssuesUnion {
  @JsonSerializable()
  const factory SalesBillDtoOutputIssuesUnion.variant1({
    required SalesBillDtoOutputIssuesUnionVariant1Type type,
    required int lineNo,
    required String product,
    required int rate,
    required int minimum,
  }) = SalesBillDtoOutputIssuesUnionVariant1;
  
  @JsonSerializable()
  const factory SalesBillDtoOutputIssuesUnion.variant2({
    required SalesBillDtoOutputIssuesUnionVariant2Type type,
    required int outstanding,
    required int newCredit,
    required int limit,
  }) = SalesBillDtoOutputIssuesUnionVariant2;
  

  factory SalesBillDtoOutputIssuesUnion.fromJson(Map<String, Object?> json) =>
      // TODO: No discriminator in OpenAPI spec - you must implement this manually.
      //
      // Inspect the JSON and return the matching variant. Each variant has a fromJson:
      //   SalesBillDtoOutputIssuesUnionVariantName.fromJson(json)
      //
      // Example pattern (check for unique fields):
      //   json.containsKey('uniqueFieldA') ? SalesBillDtoOutputIssuesUnionTypeA.fromJson(json) :
      //   json.containsKey('uniqueFieldB') ? SalesBillDtoOutputIssuesUnionTypeB.fromJson(json) :
      //   SalesBillDtoOutputIssuesUnionDefault.fromJson(json);
      //
      // IMPORTANT: Keep the => arrow syntax. Converting to a { } body will cause
      // freezed to skip generating toJson/fromJson for this class.
      throw UnimplementedError();

}
