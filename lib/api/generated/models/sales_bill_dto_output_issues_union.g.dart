// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_bill_dto_output_issues_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesBillDtoOutputIssuesUnionVariant1
_$SalesBillDtoOutputIssuesUnionVariant1FromJson(Map<String, dynamic> json) =>
    SalesBillDtoOutputIssuesUnionVariant1(
      type: SalesBillDtoOutputIssuesUnionVariant1Type.fromJson(
        json['type'] as String,
      ),
      lineNo: (json['lineNo'] as num).toInt(),
      product: json['product'] as String,
      rate: (json['rate'] as num).toInt(),
      minimum: (json['minimum'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SalesBillDtoOutputIssuesUnionVariant1ToJson(
  SalesBillDtoOutputIssuesUnionVariant1 instance,
) => <String, dynamic>{
  'type': instance.type,
  'lineNo': instance.lineNo,
  'product': instance.product,
  'rate': instance.rate,
  'minimum': instance.minimum,
  'runtimeType': instance.$type,
};

SalesBillDtoOutputIssuesUnionVariant2
_$SalesBillDtoOutputIssuesUnionVariant2FromJson(Map<String, dynamic> json) =>
    SalesBillDtoOutputIssuesUnionVariant2(
      type: SalesBillDtoOutputIssuesUnionVariant2Type.fromJson(
        json['type'] as String,
      ),
      outstanding: (json['outstanding'] as num).toInt(),
      newCredit: (json['newCredit'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SalesBillDtoOutputIssuesUnionVariant2ToJson(
  SalesBillDtoOutputIssuesUnionVariant2 instance,
) => <String, dynamic>{
  'type': instance.type,
  'outstanding': instance.outstanding,
  'newCredit': instance.newCredit,
  'limit': instance.limit,
  'runtimeType': instance.$type,
};
