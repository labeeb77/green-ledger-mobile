// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Actor _$ActorFromJson(Map<String, dynamic> json) => _Actor(
  id: json['id'] as String?,
  name: json['name'] as String,
  type: Type3.fromJson(json['type'] as String),
);

Map<String, dynamic> _$ActorToJson(_Actor instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
};
