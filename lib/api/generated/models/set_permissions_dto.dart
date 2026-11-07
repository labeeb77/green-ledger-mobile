// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'overrides2.dart';

part 'set_permissions_dto.freezed.dart';
part 'set_permissions_dto.g.dart';

@Freezed()
abstract class SetPermissionsDto with _$SetPermissionsDto {
  const factory SetPermissionsDto({required List<Overrides2> overrides}) = _SetPermissionsDto;

  factory SetPermissionsDto.fromJson(Map<String, Object?> json) => _$SetPermissionsDtoFromJson(json);
}
