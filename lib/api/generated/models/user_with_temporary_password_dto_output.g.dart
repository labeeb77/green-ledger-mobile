// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_with_temporary_password_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserWithTemporaryPasswordDtoOutput
_$UserWithTemporaryPasswordDtoOutputFromJson(Map<String, dynamic> json) =>
    _UserWithTemporaryPasswordDtoOutput(
      user: User3.fromJson(json['user'] as Map<String, dynamic>),
      temporaryPassword: json['temporaryPassword'] as String,
    );

Map<String, dynamic> _$UserWithTemporaryPasswordDtoOutputToJson(
  _UserWithTemporaryPasswordDtoOutput instance,
) => <String, dynamic>{
  'user': instance.user,
  'temporaryPassword': instance.temporaryPassword,
};
