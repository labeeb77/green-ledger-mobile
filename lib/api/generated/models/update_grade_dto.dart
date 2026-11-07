// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_grade_dto.freezed.dart';
part 'update_grade_dto.g.dart';

@Freezed()
abstract class UpdateGradeDto with _$UpdateGradeDto {
  const factory UpdateGradeDto({String? name, bool? active}) = _UpdateGradeDto;

  factory UpdateGradeDto.fromJson(Map<String, Object?> json) => _$UpdateGradeDtoFromJson(json);
}
