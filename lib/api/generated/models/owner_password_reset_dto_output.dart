// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner3.dart';

part 'owner_password_reset_dto_output.freezed.dart';
part 'owner_password_reset_dto_output.g.dart';

@Freezed()
abstract class OwnerPasswordResetDtoOutput with _$OwnerPasswordResetDtoOutput {
  const factory OwnerPasswordResetDtoOutput({required Owner3 owner, required String temporaryPassword}) =
      _OwnerPasswordResetDtoOutput;

  factory OwnerPasswordResetDtoOutput.fromJson(Map<String, Object?> json) =>
      _$OwnerPasswordResetDtoOutputFromJson(json);
}
