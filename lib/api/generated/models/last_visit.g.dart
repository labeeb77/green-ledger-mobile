// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_visit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastVisit _$LastVisitFromJson(Map<String, dynamic> json) => _LastVisit(
  visitDate: json['visitDate'] as String,
  outcome: Outcome.fromJson(json['outcome'] as String),
  user: User4.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LastVisitToJson(_LastVisit instance) => <String, dynamic>{
  'visitDate': instance.visitDate,
  'outcome': instance.outcome,
  'user': instance.user,
};
