// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer8.dart';
import 'receipt2.dart';
import 'user6.dart';
import 'visit_note_dto_output_outcome.dart';

part 'visit_note_dto_output.freezed.dart';
part 'visit_note_dto_output.g.dart';

@Freezed()
abstract class VisitNoteDtoOutput with _$VisitNoteDtoOutput {
  const factory VisitNoteDtoOutput({
    required String id,
    required String visitDate,
    required VisitNoteDtoOutputOutcome outcome,
    required String? promiseDate,
    required String? note,
    required Customer8 customer,
    required User6 user,
    required Receipt2? receipt,
    required DateTime createdAt,
  }) = _VisitNoteDtoOutput;

  factory VisitNoteDtoOutput.fromJson(Map<String, Object?> json) => _$VisitNoteDtoOutputFromJson(json);
}
