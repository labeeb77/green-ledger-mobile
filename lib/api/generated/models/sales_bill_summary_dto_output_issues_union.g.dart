// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_bill_summary_dto_output_issues_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesBillSummaryDtoOutputIssuesUnionVariant1
_$SalesBillSummaryDtoOutputIssuesUnionVariant1FromJson(
  Map<String, dynamic> json,
) => SalesBillSummaryDtoOutputIssuesUnionVariant1(
  type: SalesBillSummaryDtoOutputIssuesUnionVariant1Type.fromJson(
    json['type'] as String,
  ),
  lineNo: (json['lineNo'] as num).toInt(),
  product: json['product'] as String,
  rate: (json['rate'] as num).toInt(),
  minimum: (json['minimum'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SalesBillSummaryDtoOutputIssuesUnionVariant1ToJson(
  SalesBillSummaryDtoOutputIssuesUnionVariant1 instance,
) => <String, dynamic>{
  'type': instance.type,
  'lineNo': instance.lineNo,
  'product': instance.product,
  'rate': instance.rate,
  'minimum': instance.minimum,
  'runtimeType': instance.$type,
};

SalesBillSummaryDtoOutputIssuesUnionVariant2
_$SalesBillSummaryDtoOutputIssuesUnionVariant2FromJson(
  Map<String, dynamic> json,
) => SalesBillSummaryDtoOutputIssuesUnionVariant2(
  type: SalesBillSummaryDtoOutputIssuesUnionVariant2Type.fromJson(
    json['type'] as String,
  ),
  outstanding: (json['outstanding'] as num).toInt(),
  newCredit: (json['newCredit'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SalesBillSummaryDtoOutputIssuesUnionVariant2ToJson(
  SalesBillSummaryDtoOutputIssuesUnionVariant2 instance,
) => <String, dynamic>{
  'type': instance.type,
  'outstanding': instance.outstanding,
  'newCredit': instance.newCredit,
  'limit': instance.limit,
  'runtimeType': instance.$type,
};
