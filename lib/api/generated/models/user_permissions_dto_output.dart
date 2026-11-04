// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'effective_effective.dart';
import 'overrides.dart';
import 'user_permissions_dto_output_role.dart';

part 'user_permissions_dto_output.freezed.dart';
part 'user_permissions_dto_output.g.dart';

@Freezed()
abstract class UserPermissionsDtoOutput with _$UserPermissionsDtoOutput {
  const factory UserPermissionsDtoOutput({
    required UserPermissionsDtoOutputRole role,
    required List<Overrides> overrides,
    required Map<String, EffectiveEffective> effective,
  }) = _UserPermissionsDtoOutput;
  
  factory UserPermissionsDtoOutput.fromJson(Map<String, Object?> json) => _$UserPermissionsDtoOutputFromJson(json);
}
