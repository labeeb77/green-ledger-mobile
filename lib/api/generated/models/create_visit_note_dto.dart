// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_visit_note_dto_outcome.dart';

part 'create_visit_note_dto.freezed.dart';
part 'create_visit_note_dto.g.dart';

@Freezed()
abstract class CreateVisitNoteDto with _$CreateVisitNoteDto {
  const factory CreateVisitNoteDto({
    required String customerId,
    required CreateVisitNoteDtoOutcome outcome,
    String? visitDate,
    String? promiseDate,
    String? note,
  }) = _CreateVisitNoteDto;

  factory CreateVisitNoteDto.fromJson(Map<String, Object?> json) => _$CreateVisitNoteDtoFromJson(json);
}
