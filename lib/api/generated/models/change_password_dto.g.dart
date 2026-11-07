// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordDto _$ChangePasswordDtoFromJson(Map<String, dynamic> json) =>
    _ChangePasswordDto(currentPassword: json['currentPassword'] as String, newPassword: json['newPassword']);

Map<String, dynamic> _$ChangePasswordDtoToJson(_ChangePasswordDto instance) => <String, dynamic>{
  'currentPassword': instance.currentPassword,
  'newPassword': instance.newPassword,
};
