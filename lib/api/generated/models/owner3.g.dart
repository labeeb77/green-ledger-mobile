// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Owner3 _$Owner3FromJson(Map<String, dynamic> json) => _Owner3(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  role: Role.fromJson(json['role'] as String),
  active: json['active'] as bool,
  mustChangePassword: json['mustChangePassword'] as bool,
  lastLoginAt: json['lastLoginAt'] == null ? null : DateTime.parse(json['lastLoginAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$Owner3ToJson(_Owner3 instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'role': instance.role,
  'active': instance.active,
  'mustChangePassword': instance.mustChangePassword,
  'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
};
