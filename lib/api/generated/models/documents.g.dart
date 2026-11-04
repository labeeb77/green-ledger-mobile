// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Documents _$DocumentsFromJson(Map<String, dynamic> json) => _Documents(
  id: json['id'] as String,
  type: Type4.fromJson(json['type'] as String),
  number: json['number'] as String,
  date: DateTime.parse(json['date'] as String),
  party: json['party'] as String,
);

Map<String, dynamic> _$DocumentsToJson(_Documents instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'number': instance.number,
      'date': instance.date.toIso8601String(),
      'party': instance.party,
    };
