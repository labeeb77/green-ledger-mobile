// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_password_reset_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OwnerPasswordResetDtoOutput _$OwnerPasswordResetDtoOutputFromJson(Map<String, dynamic> json) =>
    _OwnerPasswordResetDtoOutput(
      owner: Owner3.fromJson(json['owner'] as Map<String, dynamic>),
      temporaryPassword: json['temporaryPassword'] as String,
    );

Map<String, dynamic> _$OwnerPasswordResetDtoOutputToJson(_OwnerPasswordResetDtoOutput instance) => <String, dynamic>{
  'owner': instance.owner,
  'temporaryPassword': instance.temporaryPassword,
};
