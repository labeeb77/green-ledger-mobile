// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePriceGroupDto _$CreatePriceGroupDtoFromJson(Map<String, dynamic> json) => _CreatePriceGroupDto(
  name: json['name'] as String,
  adjustmentType: CreatePriceGroupDtoAdjustmentType.fromJson(json['adjustmentType'] as String),
  value: (json['value'] as num).toInt(),
);

Map<String, dynamic> _$CreatePriceGroupDtoToJson(_CreatePriceGroupDto instance) => <String, dynamic>{
  'name': instance.name,
  'adjustmentType': instance.adjustmentType,
  'value': instance.value,
};
