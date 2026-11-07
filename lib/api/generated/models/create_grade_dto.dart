// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_grade_dto.freezed.dart';
part 'create_grade_dto.g.dart';

@Freezed()
abstract class CreateGradeDto with _$CreateGradeDto {
  const factory CreateGradeDto({required String name}) = _CreateGradeDto;

  factory CreateGradeDto.fromJson(Map<String, Object?> json) => _$CreateGradeDtoFromJson(json);
}
