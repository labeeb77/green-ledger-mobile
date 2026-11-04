// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'auth_tokens_dto_output.freezed.dart';
part 'auth_tokens_dto_output.g.dart';

@Freezed()
abstract class AuthTokensDtoOutput with _$AuthTokensDtoOutput {
  const factory AuthTokensDtoOutput({
    required String accessToken,
    required int expiresIn,
    required bool mustChangePassword,
    required User user,
    String? refreshToken,
  }) = _AuthTokensDtoOutput;
  
  factory AuthTokensDtoOutput.fromJson(Map<String, Object?> json) => _$AuthTokensDtoOutputFromJson(json);
}
