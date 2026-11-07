// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_visit2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastVisit2 _$LastVisit2FromJson(Map<String, dynamic> json) => _LastVisit2(
  visitDate: json['visitDate'] as String,
  outcome: Outcome.fromJson(json['outcome'] as String),
  user: User7.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LastVisit2ToJson(_LastVisit2 instance) => <String, dynamic>{
  'visitDate': instance.visitDate,
  'outcome': instance.outcome,
  'user': instance.user,
};
