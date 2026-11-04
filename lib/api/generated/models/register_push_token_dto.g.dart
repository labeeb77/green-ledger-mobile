// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_push_token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterPushTokenDto _$RegisterPushTokenDtoFromJson(
  Map<String, dynamic> json,
) => _RegisterPushTokenDto(
  platform: RegisterPushTokenDtoPlatform.fromJson(json['platform'] as String),
  token: json['token'] as String,
);

Map<String, dynamic> _$RegisterPushTokenDtoToJson(
  _RegisterPushTokenDto instance,
) => <String, dynamic>{'platform': instance.platform, 'token': instance.token};
