// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Agents _$AgentsFromJson(Map<String, dynamic> json) => _Agents(
  userId: json['userId'] as String,
  name: json['name'] as String,
  collected: Collected.fromJson(json['collected'] as Map<String, dynamic>),
  visits: (json['visits'] as num).toInt(),
  cashInBag: (json['cashInBag'] as num).toInt(),
  handoverPending: json['handoverPending'] as bool,
);

Map<String, dynamic> _$AgentsToJson(_Agents instance) => <String, dynamic>{
  'userId': instance.userId,
  'name': instance.name,
  'collected': instance.collected,
  'visits': instance.visits,
  'cashInBag': instance.cashInBag,
  'handoverPending': instance.handoverPending,
};
