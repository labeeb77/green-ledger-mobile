// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User2 _$User2FromJson(Map<String, dynamic> json) => _User2(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  role: Role2.fromJson(json['role'] as String),
);

Map<String, dynamic> _$User2ToJson(_User2 instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'role': instance.role,
};
