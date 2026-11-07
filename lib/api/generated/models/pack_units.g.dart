// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackUnits _$PackUnitsFromJson(Map<String, dynamic> json) => _PackUnits(
  id: json['id'] as String,
  name: json['name'] as String,
  sizeType: SizeType.fromJson(json['sizeType'] as String),
  size: json['size'] as String?,
  active: json['active'] as bool,
);

Map<String, dynamic> _$PackUnitsToJson(_PackUnits instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'sizeType': instance.sizeType,
  'size': instance.size,
  'active': instance.active,
};
