// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collected.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Collected _$CollectedFromJson(Map<String, dynamic> json) => _Collected(
  total: (json['total'] as num).toInt(),
  byMethod: ByMethod3.fromJson(json['byMethod'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CollectedToJson(_Collected instance) => <String, dynamic>{
  'total': instance.total,
  'byMethod': instance.byMethod,
};
