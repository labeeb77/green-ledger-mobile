// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_status_dto_output.freezed.dart';
part 'support_status_dto_output.g.dart';

@Freezed()
abstract class SupportStatusDtoOutput with _$SupportStatusDtoOutput {
  const factory SupportStatusDtoOutput({
    required bool active,
    required String? expiresAt,
    required String? grantedAt,
    required int views,
  }) = _SupportStatusDtoOutput;
  
  factory SupportStatusDtoOutput.fromJson(Map<String, Object?> json) => _$SupportStatusDtoOutputFromJson(json);
}
