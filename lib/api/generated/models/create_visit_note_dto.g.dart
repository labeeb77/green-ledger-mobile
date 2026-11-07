// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_visit_note_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateVisitNoteDto _$CreateVisitNoteDtoFromJson(Map<String, dynamic> json) => _CreateVisitNoteDto(
  customerId: json['customerId'] as String,
  outcome: CreateVisitNoteDtoOutcome.fromJson(json['outcome'] as String),
  visitDate: json['visitDate'] as String?,
  promiseDate: json['promiseDate'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$CreateVisitNoteDtoToJson(_CreateVisitNoteDto instance) => <String, dynamic>{
  'customerId': instance.customerId,
  'outcome': instance.outcome,
  'visitDate': instance.visitDate,
  'promiseDate': instance.promiseDate,
  'note': instance.note,
};
