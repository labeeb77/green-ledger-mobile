// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'update_user_dto_role.dart';

part 'update_user_dto.freezed.dart';
part 'update_user_dto.g.dart';

@Freezed()
abstract class UpdateUserDto with _$UpdateUserDto {
  const factory UpdateUserDto({
    String? name,
    UpdateUserDtoRole? role,
    bool? active,
  }) = _UpdateUserDto;
  
  factory UpdateUserDto.fromJson(Map<String, Object?> json) => _$UpdateUserDtoFromJson(json);
}
