// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_adjustment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAdjustmentDto _$CreateAdjustmentDtoFromJson(Map<String, dynamic> json) =>
    _CreateAdjustmentDto(
      notes: json['notes'] as String,
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Lines9.fromJson(e as Map<String, dynamic>))
          .toList(),
      entryDate: json['entryDate'] == null
          ? null
          : DateTime.parse(json['entryDate'] as String),
    );

Map<String, dynamic> _$CreateAdjustmentDtoToJson(
  _CreateAdjustmentDto instance,
) => <String, dynamic>{
  'notes': instance.notes,
  'lines': instance.lines,
  'entryDate': instance.entryDate?.toIso8601String(),
};
