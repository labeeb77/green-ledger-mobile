// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Device _$DeviceFromJson(Map<String, dynamic> json) => _Device(
  id: json['id'] as String,
  platform: json['platform'] == null
      ? Platform.other
      : Platform.fromJson(json['platform'] as String),
  name: json['name'] as String?,
);

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
  'id': instance.id,
  'platform': instance.platform,
  'name': instance.name,
};
