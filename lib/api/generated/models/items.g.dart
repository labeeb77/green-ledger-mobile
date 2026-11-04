// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Items _$ItemsFromJson(Map<String, dynamic> json) => _Items(
  id: json['id'] as String,
  at: DateTime.parse(json['at'] as String),
  actor: Actor.fromJson(json['actor'] as Map<String, dynamic>),
  action: json['action'] as String,
  entityType: json['entityType'] as String,
  entityId: json['entityId'] as String?,
  summary: json['summary'] as String?,
  before: json['before'],
  after: json['after'],
);

Map<String, dynamic> _$ItemsToJson(_Items instance) => <String, dynamic>{
  'id': instance.id,
  'at': instance.at.toIso8601String(),
  'actor': instance.actor,
  'action': instance.action,
  'entityType': instance.entityType,
  'entityId': instance.entityId,
  'summary': instance.summary,
  'before': instance.before,
  'after': instance.after,
};
