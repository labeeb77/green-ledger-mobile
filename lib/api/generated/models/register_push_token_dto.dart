// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'register_push_token_dto_platform.dart';

part 'register_push_token_dto.freezed.dart';
part 'register_push_token_dto.g.dart';

@Freezed()
abstract class RegisterPushTokenDto with _$RegisterPushTokenDto {
  const factory RegisterPushTokenDto({required RegisterPushTokenDtoPlatform platform, required String token}) =
      _RegisterPushTokenDto;

  factory RegisterPushTokenDto.fromJson(Map<String, Object?> json) => _$RegisterPushTokenDtoFromJson(json);
}
