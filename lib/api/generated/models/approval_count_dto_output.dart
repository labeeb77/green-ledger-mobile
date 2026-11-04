// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'approval_count_dto_output.freezed.dart';
part 'approval_count_dto_output.g.dart';

@Freezed()
abstract class ApprovalCountDtoOutput with _$ApprovalCountDtoOutput {
  const factory ApprovalCountDtoOutput({
    required int pending,
  }) = _ApprovalCountDtoOutput;
  
  factory ApprovalCountDtoOutput.fromJson(Map<String, Object?> json) => _$ApprovalCountDtoOutputFromJson(json);
}
