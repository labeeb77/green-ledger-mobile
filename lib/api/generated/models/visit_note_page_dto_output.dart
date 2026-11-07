// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'visit_note_dto_output.dart';

part 'visit_note_page_dto_output.freezed.dart';
part 'visit_note_page_dto_output.g.dart';

@Freezed()
abstract class VisitNotePageDtoOutput with _$VisitNotePageDtoOutput {
  const factory VisitNotePageDtoOutput({required List<VisitNoteDtoOutput> items, required String? nextCursor}) =
      _VisitNotePageDtoOutput;

  factory VisitNotePageDtoOutput.fromJson(Map<String, Object?> json) => _$VisitNotePageDtoOutputFromJson(json);
}
