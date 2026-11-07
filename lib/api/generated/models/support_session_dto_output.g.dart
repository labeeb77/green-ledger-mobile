// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_session_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupportSessionDtoOutput _$SupportSessionDtoOutputFromJson(Map<String, dynamic> json) => _SupportSessionDtoOutput(
  accessToken: json['accessToken'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  business: Business3.fromJson(json['business'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SupportSessionDtoOutputToJson(_SupportSessionDtoOutput instance) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'business': instance.business,
};
