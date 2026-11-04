// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) =>
    _UpdateUserDto(
      name: json['name'] as String?,
      role: json['role'] == null
          ? null
          : UpdateUserDtoRole.fromJson(json['role'] as String),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$UpdateUserDtoToJson(_UpdateUserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'active': instance.active,
    };
