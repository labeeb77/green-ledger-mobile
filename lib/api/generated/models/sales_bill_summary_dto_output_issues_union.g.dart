// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_bill_summary_dto_output_issues_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesBillSummaryDtoOutputIssuesUnionVariant1 _$SalesBillSummaryDtoOutputIssuesUnionVariant1FromJson(
  Map<String, dynamic> json,
) => SalesBillSummaryDtoOutputIssuesUnionVariant1(
  lineNo: (json['lineNo'] as num).toInt(),
  minimum: (json['minimum'] as num).toInt(),
  product: json['product'] as String,
  rate: (json['rate'] as num).toInt(),
  type: SalesBillSummaryDtoOutputIssuesUnionVariant1Type.fromJson(json['type'] as String),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SalesBillSummaryDtoOutputIssuesUnionVariant1ToJson(
  SalesBillSummaryDtoOutputIssuesUnionVariant1 instance,
) => <String, dynamic>{
  'lineNo': instance.lineNo,
  'minimum': instance.minimum,
  'product': instance.product,
  'rate': instance.rate,
  'type': instance.type,
  'runtimeType': instance.$type,
};

SalesBillSummaryDtoOutputIssuesUnionVariant2 _$SalesBillSummaryDtoOutputIssuesUnionVariant2FromJson(
  Map<String, dynamic> json,
) => SalesBillSummaryDtoOutputIssuesUnionVariant2(
  limit: (json['limit'] as num).toInt(),
  newCredit: (json['newCredit'] as num).toInt(),
  outstanding: (json['outstanding'] as num).toInt(),
  type: SalesBillSummaryDtoOutputIssuesUnionVariant2Type.fromJson(json['type'] as String),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SalesBillSummaryDtoOutputIssuesUnionVariant2ToJson(
  SalesBillSummaryDtoOutputIssuesUnionVariant2 instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'newCredit': instance.newCredit,
  'outstanding': instance.outstanding,
  'type': instance.type,
  'runtimeType': instance.$type,
};
