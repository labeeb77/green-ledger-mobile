// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'business.dart';
import 'permissions_permissions.dart';
import 'subscription.dart';
import 'support.dart';
import 'user2.dart';

part 'me_dto_output.freezed.dart';
part 'me_dto_output.g.dart';

@Freezed()
abstract class MeDtoOutput with _$MeDtoOutput {
  const factory MeDtoOutput({
    required User2 user,
    required bool mustChangePassword,
    required Business? business,
    required Subscription? subscription,
    required Map<String, PermissionsPermissions> permissions,
    required Support? support,
  }) = _MeDtoOutput;
  
  factory MeDtoOutput.fromJson(Map<String, Object?> json) => _$MeDtoOutputFromJson(json);
}
