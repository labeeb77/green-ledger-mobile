// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pack_unit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePackUnitDto _$CreatePackUnitDtoFromJson(Map<String, dynamic> json) =>
    _CreatePackUnitDto(
      name: json['name'] as String,
      sizeType: CreatePackUnitDtoSizeType.fromJson(json['sizeType'] as String),
      size: json['size'],
    );

Map<String, dynamic> _$CreatePackUnitDtoToJson(_CreatePackUnitDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sizeType': instance.sizeType,
      'size': instance.size,
    };
