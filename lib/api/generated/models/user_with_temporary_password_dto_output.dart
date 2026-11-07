// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user3.dart';

part 'user_with_temporary_password_dto_output.freezed.dart';
part 'user_with_temporary_password_dto_output.g.dart';

@Freezed()
abstract class UserWithTemporaryPasswordDtoOutput with _$UserWithTemporaryPasswordDtoOutput {
  const factory UserWithTemporaryPasswordDtoOutput({required User3 user, required String temporaryPassword}) =
      _UserWithTemporaryPasswordDtoOutput;

  factory UserWithTemporaryPasswordDtoOutput.fromJson(Map<String, Object?> json) =>
      _$UserWithTemporaryPasswordDtoOutputFromJson(json);
}
