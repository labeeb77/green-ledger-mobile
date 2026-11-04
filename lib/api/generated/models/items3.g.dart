// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Items3 _$Items3FromJson(Map<String, dynamic> json) => _Items3(
  id: json['id'] as String,
  type: json['type'] as String,
  title: json['title'] as String,
  body: json['body'] as String?,
  link: json['link'] as String?,
  read: json['read'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$Items3ToJson(_Items3 instance) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'title': instance.title,
  'body': instance.body,
  'link': instance.link,
  'read': instance.read,
  'createdAt': instance.createdAt.toIso8601String(),
};
