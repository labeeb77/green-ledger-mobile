// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_tokens_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokensDtoOutput _$AuthTokensDtoOutputFromJson(Map<String, dynamic> json) =>
    _AuthTokensDtoOutput(
      accessToken: json['accessToken'] as String,
      expiresIn: (json['expiresIn'] as num).toInt(),
      mustChangePassword: json['mustChangePassword'] as bool,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$AuthTokensDtoOutputToJson(
  _AuthTokensDtoOutput instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'expiresIn': instance.expiresIn,
  'mustChangePassword': instance.mustChangePassword,
  'user': instance.user,
  'refreshToken': instance.refreshToken,
};
