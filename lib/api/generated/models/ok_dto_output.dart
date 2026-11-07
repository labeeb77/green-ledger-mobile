// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ok_dto_output.freezed.dart';
part 'ok_dto_output.g.dart';

@Freezed()
abstract class OkDtoOutput with _$OkDtoOutput {
  const factory OkDtoOutput({required bool ok}) = _OkDtoOutput;

  factory OkDtoOutput.fromJson(Map<String, Object?> json) => _$OkDtoOutputFromJson(json);
}
