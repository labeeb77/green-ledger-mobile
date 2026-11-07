// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'health_dto_output_status.dart';

part 'health_dto_output.freezed.dart';
part 'health_dto_output.g.dart';

@Freezed()
abstract class HealthDtoOutput with _$HealthDtoOutput {
  const factory HealthDtoOutput({required HealthDtoOutputStatus status, required bool database, required bool redis}) =
      _HealthDtoOutput;

  factory HealthDtoOutput.fromJson(Map<String, Object?> json) => _$HealthDtoOutputFromJson(json);
}
