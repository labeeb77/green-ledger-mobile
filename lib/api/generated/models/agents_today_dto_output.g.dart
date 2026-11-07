// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_today_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AgentsTodayDtoOutput _$AgentsTodayDtoOutputFromJson(Map<String, dynamic> json) => _AgentsTodayDtoOutput(
  date: json['date'] as String,
  agents: (json['agents'] as List<dynamic>).map((e) => Agents.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$AgentsTodayDtoOutputToJson(_AgentsTodayDtoOutput instance) => <String, dynamic>{
  'date': instance.date,
  'agents': instance.agents,
};
