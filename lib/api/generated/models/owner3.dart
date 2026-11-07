// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'owner3.freezed.dart';
part 'owner3.g.dart';

@Freezed()
abstract class Owner3 with _$Owner3 {
  const factory Owner3({
    required String id,
    required String name,
    required String phone,
    required Role role,
    required bool active,
    required bool mustChangePassword,
    required DateTime? lastLoginAt,
    required DateTime createdAt,
  }) = _Owner3;

  factory Owner3.fromJson(Map<String, Object?> json) => _$Owner3FromJson(json);
}
