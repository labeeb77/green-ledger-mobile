// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Items2 _$Items2FromJson(Map<String, dynamic> json) => _Items2(
  id: json['id'] as String,
  type: json['type'] as String,
  title: json['title'] as String,
  body: json['body'] as String?,
  link: json['link'] as String?,
  read: json['read'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$Items2ToJson(_Items2 instance) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'title': instance.title,
  'body': instance.body,
  'link': instance.link,
  'read': instance.read,
  'createdAt': instance.createdAt.toIso8601String(),
};
