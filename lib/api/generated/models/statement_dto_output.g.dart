// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatementDtoOutput _$StatementDtoOutputFromJson(Map<String, dynamic> json) =>
    _StatementDtoOutput(
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
      opening: (json['opening'] as num).toInt(),
      entries: (json['entries'] as List<dynamic>)
          .map((e) => Entries.fromJson(e as Map<String, dynamic>))
          .toList(),
      closing: (json['closing'] as num).toInt(),
    );

Map<String, dynamic> _$StatementDtoOutputToJson(_StatementDtoOutput instance) =>
    <String, dynamic>{
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
      'opening': instance.opening,
      'entries': instance.entries,
      'closing': instance.closing,
    };
