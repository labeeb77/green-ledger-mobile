// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_units2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackUnits2 _$PackUnits2FromJson(Map<String, dynamic> json) => _PackUnits2(
  name: json['name'] as String,
  sizeType: SizeType.fromJson(json['sizeType'] as String),
  size: json['size'],
);

Map<String, dynamic> _$PackUnits2ToJson(_PackUnits2 instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sizeType': instance.sizeType,
      'size': instance.size,
    };
