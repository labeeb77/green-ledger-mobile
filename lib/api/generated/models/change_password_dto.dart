// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_dto.freezed.dart';
part 'change_password_dto.g.dart';

@Freezed()
abstract class ChangePasswordDto with _$ChangePasswordDto {
  const factory ChangePasswordDto({
    required String currentPassword,
    required dynamic newPassword,
  }) = _ChangePasswordDto;
  
  factory ChangePasswordDto.fromJson(Map<String, Object?> json) => _$ChangePasswordDtoFromJson(json);
}
