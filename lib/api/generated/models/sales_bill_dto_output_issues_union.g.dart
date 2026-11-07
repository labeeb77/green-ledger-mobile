// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_bill_dto_output_issues_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesBillDtoOutputIssuesUnionVariant1 _$SalesBillDtoOutputIssuesUnionVariant1FromJson(Map<String, dynamic> json) =>
    SalesBillDtoOutputIssuesUnionVariant1(
      lineNo: (json['lineNo'] as num).toInt(),
      minimum: (json['minimum'] as num).toInt(),
      product: json['product'] as String,
      rate: (json['rate'] as num).toInt(),
      type: SalesBillDtoOutputIssuesUnionVariant1Type.fromJson(json['type'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SalesBillDtoOutputIssuesUnionVariant1ToJson(SalesBillDtoOutputIssuesUnionVariant1 instance) =>
    <String, dynamic>{
      'lineNo': instance.lineNo,
      'minimum': instance.minimum,
      'product': instance.product,
      'rate': instance.rate,
      'type': instance.type,
      'runtimeType': instance.$type,
    };

SalesBillDtoOutputIssuesUnionVariant2 _$SalesBillDtoOutputIssuesUnionVariant2FromJson(Map<String, dynamic> json) =>
    SalesBillDtoOutputIssuesUnionVariant2(
      limit: (json['limit'] as num).toInt(),
      newCredit: (json['newCredit'] as num).toInt(),
      outstanding: (json['outstanding'] as num).toInt(),
      type: SalesBillDtoOutputIssuesUnionVariant2Type.fromJson(json['type'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SalesBillDtoOutputIssuesUnionVariant2ToJson(SalesBillDtoOutputIssuesUnionVariant2 instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'newCredit': instance.newCredit,
      'outstanding': instance.outstanding,
      'type': instance.type,
      'runtimeType': instance.$type,
    };
