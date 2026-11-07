// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'errors.dart';

part 'import_result_dto_output.freezed.dart';
part 'import_result_dto_output.g.dart';

@Freezed()
abstract class ImportResultDtoOutput with _$ImportResultDtoOutput {
  const factory ImportResultDtoOutput({required bool ok, required int imported, required List<Errors> errors}) =
      _ImportResultDtoOutput;

  factory ImportResultDtoOutput.fromJson(Map<String, Object?> json) => _$ImportResultDtoOutputFromJson(json);
}
