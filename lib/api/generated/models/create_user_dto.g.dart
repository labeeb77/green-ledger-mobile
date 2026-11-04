// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) =>
    _CreateUserDto(
      name: json['name'] as String,
      phone: json['phone'] as String,
      role: CreateUserDtoRole.fromJson(json['role'] as String),
    );

Map<String, dynamic> _$CreateUserDtoToJson(_CreateUserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'role': instance.role,
    };
