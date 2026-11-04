// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cancel_result_dto_output_status.dart';

part 'cancel_result_dto_output.freezed.dart';
part 'cancel_result_dto_output.g.dart';

@Freezed()
abstract class CancelResultDtoOutput with _$CancelResultDtoOutput {
  const factory CancelResultDtoOutput({
    required CancelResultDtoOutputStatus status,
    String? approvalId,
  }) = _CancelResultDtoOutput;
  
  factory CancelResultDtoOutput.fromJson(Map<String, Object?> json) => _$CancelResultDtoOutputFromJson(json);
}
