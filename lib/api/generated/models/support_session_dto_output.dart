// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'business3.dart';

part 'support_session_dto_output.freezed.dart';
part 'support_session_dto_output.g.dart';

@Freezed()
abstract class SupportSessionDtoOutput with _$SupportSessionDtoOutput {
  const factory SupportSessionDtoOutput({
    required String accessToken,
    required DateTime expiresAt,
    required Business3 business,
  }) = _SupportSessionDtoOutput;
  
  factory SupportSessionDtoOutput.fromJson(Map<String, Object?> json) => _$SupportSessionDtoOutputFromJson(json);
}
