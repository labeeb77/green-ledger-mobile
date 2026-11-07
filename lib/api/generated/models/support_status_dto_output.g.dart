// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_status_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportStatusDtoOutput _$SupportStatusDtoOutputFromJson(Map<String, dynamic> json) => _SupportStatusDtoOutput(
  active: json['active'] as bool,
  expiresAt: json['expiresAt'] as String?,
  grantedAt: json['grantedAt'] as String?,
  views: (json['views'] as num).toInt(),
);

Map<String, dynamic> _$SupportStatusDtoOutputToJson(_SupportStatusDtoOutput instance) => <String, dynamic>{
  'active': instance.active,
  'expiresAt': instance.expiresAt,
  'grantedAt': instance.grantedAt,
  'views': instance.views,
};
