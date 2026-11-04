// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateProductDto _$CreateProductDtoFromJson(
  Map<String, dynamic> json,
) => _CreateProductDto(
  nameEn: json['nameEn'] as String,
  stockUnit: CreateProductDtoStockUnit.fromJson(json['stockUnit'] as String),
  grades:
      (json['grades'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  nameMl: json['nameMl'] as String?,
  category: json['category'] as String?,
  minimumRate: (json['minimumRate'] as num?)?.toInt(),
  lowStockLevel: json['lowStockLevel'],
  packUnits: (json['packUnits'] as List<dynamic>?)
      ?.map((e) => PackUnits2.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateProductDtoToJson(_CreateProductDto instance) =>
    <String, dynamic>{
      'nameEn': instance.nameEn,
      'stockUnit': instance.stockUnit,
      'grades': instance.grades,
      'nameMl': instance.nameMl,
      'category': instance.category,
      'minimumRate': instance.minimumRate,
      'lowStockLevel': instance.lowStockLevel,
      'packUnits': instance.packUnits,
    };
