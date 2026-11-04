// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_group_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceGroupDtoOutput _$PriceGroupDtoOutputFromJson(Map<String, dynamic> json) =>
    _PriceGroupDtoOutput(
      id: json['id'] as String,
      name: json['name'] as String,
      adjustmentType: PriceGroupDtoOutputAdjustmentType.fromJson(
        json['adjustmentType'] as String,
      ),
      value: (json['value'] as num).toInt(),
      active: json['active'] as bool,
    );

Map<String, dynamic> _$PriceGroupDtoOutputToJson(
  _PriceGroupDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'adjustmentType': instance.adjustmentType,
  'value': instance.value,
  'active': instance.active,
};
