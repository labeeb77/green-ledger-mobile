// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collected_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollectedToday _$CollectedTodayFromJson(Map<String, dynamic> json) => _CollectedToday(
  total: (json['total'] as num).toInt(),
  byMethod: ByMethod2.fromJson(json['byMethod'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectedTodayToJson(_CollectedToday instance) => <String, dynamic>{
  'total': instance.total,
  'byMethod': instance.byMethod,
};
