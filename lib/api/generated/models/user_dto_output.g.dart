// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDtoOutput _$UserDtoOutputFromJson(Map<String, dynamic> json) =>
    _UserDtoOutput(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      role: UserDtoOutputRole.fromJson(json['role'] as String),
      active: json['active'] as bool,
      mustChangePassword: json['mustChangePassword'] as bool,
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$UserDtoOutputToJson(_UserDtoOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'role': instance.role,
      'active': instance.active,
      'mustChangePassword': instance.mustChangePassword,
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
