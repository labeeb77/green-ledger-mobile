// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatementDtoOutput _$StatementDtoOutputFromJson(Map<String, dynamic> json) => _StatementDtoOutput(
  from: json['from'] as String,
  to: json['to'] as String,
  opening: (json['opening'] as num).toInt(),
  entries: (json['entries'] as List<dynamic>).map((e) => Entries.fromJson(e as Map<String, dynamic>)).toList(),
  closing: (json['closing'] as num).toInt(),
);

Map<String, dynamic> _$StatementDtoOutputToJson(_StatementDtoOutput instance) => <String, dynamic>{
  'from': instance.from,
  'to': instance.to,
  'opening': instance.opening,
  'entries': instance.entries,
  'closing': instance.closing,
};
