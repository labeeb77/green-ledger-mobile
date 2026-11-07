// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'godown_home_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GodownHomeDtoOutput _$GodownHomeDtoOutputFromJson(Map<String, dynamic> json) => _GodownHomeDtoOutput(
  date: json['date'] as String,
  toDispatch: (json['toDispatch'] as num).toInt(),
  arrivalsToday: (json['arrivalsToday'] as num).toInt(),
  lowStock: (json['lowStock'] as List<dynamic>).map((e) => LowStock2.fromJson(e as Map<String, dynamic>)).toList(),
  wastageToday: WastageToday.fromJson(json['wastageToday'] as Map<String, dynamic>),
  returnsToInspect: (json['returnsToInspect'] as num?)?.toInt(),
);

Map<String, dynamic> _$GodownHomeDtoOutputToJson(_GodownHomeDtoOutput instance) => <String, dynamic>{
  'date': instance.date,
  'toDispatch': instance.toDispatch,
  'arrivalsToday': instance.arrivalsToday,
  'lowStock': instance.lowStock,
  'wastageToday': instance.wastageToday,
  'returnsToInspect': instance.returnsToInspect,
};
