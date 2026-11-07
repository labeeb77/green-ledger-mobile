// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wastage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateWastageDto _$CreateWastageDtoFromJson(Map<String, dynamic> json) => _CreateWastageDto(
  lines: (json['lines'] as List<dynamic>).map((e) => Lines8.fromJson(e as Map<String, dynamic>)).toList(),
  entryDate: json['entryDate'] as String?,
  notes: json['notes'] as String?,
  photoFileId: json['photoFileId'] as String?,
);

Map<String, dynamic> _$CreateWastageDtoToJson(_CreateWastageDto instance) => <String, dynamic>{
  'lines': instance.lines,
  'entryDate': instance.entryDate,
  'notes': instance.notes,
  'photoFileId': instance.photoFileId,
};
