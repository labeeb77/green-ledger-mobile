// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_home_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentHomeDtoOutput _$AgentHomeDtoOutputFromJson(Map<String, dynamic> json) => _AgentHomeDtoOutput(
  date: json['date'] as String,
  dueOnMyShops: (json['dueOnMyShops'] as num).toInt(),
  collectedToday: CollectedToday.fromJson(json['collectedToday'] as Map<String, dynamic>),
  cashToHandOver: (json['cashToHandOver'] as num).toInt(),
  handoverPending: json['handoverPending'] as bool,
  dueToday: (json['dueToday'] as List<dynamic>).map((e) => DueToday.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$AgentHomeDtoOutputToJson(_AgentHomeDtoOutput instance) => <String, dynamic>{
  'date': instance.date,
  'dueOnMyShops': instance.dueOnMyShops,
  'collectedToday': instance.collectedToday,
  'cashToHandOver': instance.cashToHandOver,
  'handoverPending': instance.handoverPending,
  'dueToday': instance.dueToday,
};
