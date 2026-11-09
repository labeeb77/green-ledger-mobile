// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Packs _$PacksFromJson(Map<String, dynamic> json) => _Packs(
  packUnitId: json['packUnitId'] as String,
  name: json['name'] as String,
  count: json['count'] as String,
  estimated: json['estimated'] as bool,
);

Map<String, dynamic> _$PacksToJson(_Packs instance) => <String, dynamic>{
  'packUnitId': instance.packUnitId,
  'name': instance.name,
  'count': instance.count,
  'estimated': instance.estimated,
};
