// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProductDto _$UpdateProductDtoFromJson(Map<String, dynamic> json) => _UpdateProductDto(
  nameEn: json['nameEn'] as String?,
  nameMl: json['nameMl'] as String?,
  category: json['category'] as String?,
  minimumRate: (json['minimumRate'] as num?)?.toInt(),
  lowStockLevel: json['lowStockLevel'],
  active: json['active'] as bool?,
);

Map<String, dynamic> _$UpdateProductDtoToJson(_UpdateProductDto instance) => <String, dynamic>{
  'nameEn': instance.nameEn,
  'nameMl': instance.nameMl,
  'category': instance.category,
  'minimumRate': instance.minimumRate,
  'lowStockLevel': instance.lowStockLevel,
  'active': instance.active,
};
