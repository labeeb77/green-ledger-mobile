// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceDtoOutput _$DeviceDtoOutputFromJson(Map<String, dynamic> json) =>
    _DeviceDtoOutput(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      name: json['name'] as String?,
      platform: json['platform'] as String?,
      lastSeenAt: json['lastSeenAt'] == null
          ? null
          : DateTime.parse(json['lastSeenAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      revoked: json['revoked'] as bool,
      current: json['current'] as bool,
    );

Map<String, dynamic> _$DeviceDtoOutputToJson(_DeviceDtoOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'name': instance.name,
      'platform': instance.platform,
      'lastSeenAt': instance.lastSeenAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'revoked': instance.revoked,
      'current': instance.current,
    };
