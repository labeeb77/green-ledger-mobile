// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decided_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DecidedBy _$DecidedByFromJson(Map<String, dynamic> json) => _DecidedBy(
  id: json['id'] as String,
  name: json['name'] as String,
  role: Role.fromJson(json['role'] as String),
);

Map<String, dynamic> _$DecidedByToJson(_DecidedBy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
    };
