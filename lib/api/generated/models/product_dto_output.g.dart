// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDtoOutput _$ProductDtoOutputFromJson(Map<String, dynamic> json) => _ProductDtoOutput(
  id: json['id'] as String,
  nameEn: json['nameEn'] as String,
  nameMl: json['nameMl'] as String?,
  category: json['category'] as String?,
  stockUnit: ProductDtoOutputStockUnit.fromJson(json['stockUnit'] as String),
  minimumRate: (json['minimumRate'] as num?)?.toInt(),
  lowStockLevel: json['lowStockLevel'] as String?,
  active: json['active'] as bool,
  packUnits: (json['packUnits'] as List<dynamic>).map((e) => PackUnits.fromJson(e as Map<String, dynamic>)).toList(),
  grades: (json['grades'] as List<dynamic>).map((e) => Grades.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$ProductDtoOutputToJson(_ProductDtoOutput instance) => <String, dynamic>{
  'id': instance.id,
  'nameEn': instance.nameEn,
  'nameMl': instance.nameMl,
  'category': instance.category,
  'stockUnit': instance.stockUnit,
  'minimumRate': instance.minimumRate,
  'lowStockLevel': instance.lowStockLevel,
  'active': instance.active,
  'packUnits': instance.packUnits,
  'grades': instance.grades,
};
