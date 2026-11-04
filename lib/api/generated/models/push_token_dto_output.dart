// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_token_dto_output.freezed.dart';
part 'push_token_dto_output.g.dart';

@Freezed()
abstract class PushTokenDtoOutput with _$PushTokenDtoOutput {
  const factory PushTokenDtoOutput({
    required String id,
  }) = _PushTokenDtoOutput;
  
  factory PushTokenDtoOutput.fromJson(Map<String, Object?> json) => _$PushTokenDtoOutputFromJson(json);
}
