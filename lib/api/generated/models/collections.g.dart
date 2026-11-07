// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Collections _$CollectionsFromJson(Map<String, dynamic> json) => _Collections(
  total: (json['total'] as num).toInt(),
  byMethod: ByMethod.fromJson(json['byMethod'] as Map<String, dynamic>),
  link: Link2.fromJson(json['link'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectionsToJson(_Collections instance) => <String, dynamic>{
  'total': instance.total,
  'byMethod': instance.byMethod,
  'link': instance.link,
};
