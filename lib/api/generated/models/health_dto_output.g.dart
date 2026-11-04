// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealthDtoOutput _$HealthDtoOutputFromJson(Map<String, dynamic> json) =>
    _HealthDtoOutput(
      status: HealthDtoOutputStatus.fromJson(json['status'] as String),
      database: json['database'] as bool,
      redis: json['redis'] as bool,
    );

Map<String, dynamic> _$HealthDtoOutputToJson(_HealthDtoOutput instance) =>
    <String, dynamic>{
      'status': instance.status,
      'database': instance.database,
      'redis': instance.redis,
    };
