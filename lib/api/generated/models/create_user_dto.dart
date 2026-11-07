// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_user_dto_role.dart';

part 'create_user_dto.freezed.dart';
part 'create_user_dto.g.dart';

@Freezed()
abstract class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto({required String name, required String phone, required CreateUserDtoRole role}) =
      _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, Object?> json) => _$CreateUserDtoFromJson(json);
}
