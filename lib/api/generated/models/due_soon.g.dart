// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'due_soon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DueSoon _$DueSoonFromJson(Map<String, dynamic> json) => _DueSoon(
  id: json['id'] as String,
  name: json['name'] as String,
  status: Status7.fromJson(json['status'] as String),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$DueSoonToJson(_DueSoon instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'expiresAt': instance.expiresAt.toIso8601String(),
};
