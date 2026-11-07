// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_price_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePriceGroupDto _$UpdatePriceGroupDtoFromJson(Map<String, dynamic> json) => _UpdatePriceGroupDto(
  name: json['name'] as String?,
  adjustmentType: json['adjustmentType'] == null
      ? null
      : UpdatePriceGroupDtoAdjustmentType.fromJson(json['adjustmentType'] as String),
  value: (json['value'] as num?)?.toInt(),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$UpdatePriceGroupDtoToJson(_UpdatePriceGroupDto instance) => <String, dynamic>{
  'name': instance.name,
  'adjustmentType': instance.adjustmentType,
  'value': instance.value,
  'active': instance.active,
};
