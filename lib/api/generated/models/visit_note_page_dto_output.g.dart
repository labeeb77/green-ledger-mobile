// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_note_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VisitNotePageDtoOutput _$VisitNotePageDtoOutputFromJson(Map<String, dynamic> json) => _VisitNotePageDtoOutput(
  items: (json['items'] as List<dynamic>).map((e) => VisitNoteDtoOutput.fromJson(e as Map<String, dynamic>)).toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$VisitNotePageDtoOutputToJson(_VisitNotePageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
