// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ok_result_dto_output.freezed.dart';
part 'ok_result_dto_output.g.dart';

@Freezed()
abstract class OkResultDtoOutput with _$OkResultDtoOutput {
  const factory OkResultDtoOutput({
    required bool ok,
  }) = _OkResultDtoOutput;
  
  factory OkResultDtoOutput.fromJson(Map<String, Object?> json) => _$OkResultDtoOutputFromJson(json);
}
