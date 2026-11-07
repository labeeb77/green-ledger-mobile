// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_dto_output_role.dart';

part 'user_dto_output.freezed.dart';
part 'user_dto_output.g.dart';

@Freezed()
abstract class UserDtoOutput with _$UserDtoOutput {
  const factory UserDtoOutput({
    required String id,
    required String name,
    required String phone,
    required UserDtoOutputRole role,
    required bool active,
    required bool mustChangePassword,
    required DateTime? lastLoginAt,
    required DateTime createdAt,
  }) = _UserDtoOutput;

  factory UserDtoOutput.fromJson(Map<String, Object?> json) => _$UserDtoOutputFromJson(json);
}
