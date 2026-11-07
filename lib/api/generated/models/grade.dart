// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade.freezed.dart';
part 'grade.g.dart';

@Freezed()
abstract class Grade with _$Grade {
  const factory Grade({required String id, required String name}) = _Grade;

  factory Grade.fromJson(Map<String, Object?> json) => _$GradeFromJson(json);
}
