// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_note_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VisitNoteDtoOutput _$VisitNoteDtoOutputFromJson(Map<String, dynamic> json) => _VisitNoteDtoOutput(
  id: json['id'] as String,
  visitDate: json['visitDate'] as String,
  outcome: VisitNoteDtoOutputOutcome.fromJson(json['outcome'] as String),
  promiseDate: json['promiseDate'] as String?,
  note: json['note'] as String?,
  customer: Customer8.fromJson(json['customer'] as Map<String, dynamic>),
  user: User6.fromJson(json['user'] as Map<String, dynamic>),
  receipt: json['receipt'] == null ? null : Receipt2.fromJson(json['receipt'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$VisitNoteDtoOutputToJson(_VisitNoteDtoOutput instance) => <String, dynamic>{
  'id': instance.id,
  'visitDate': instance.visitDate,
  'outcome': instance.outcome,
  'promiseDate': instance.promiseDate,
  'note': instance.note,
  'customer': instance.customer,
  'user': instance.user,
  'receipt': instance.receipt,
  'createdAt': instance.createdAt.toIso8601String(),
};
