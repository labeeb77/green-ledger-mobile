// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'owner2.freezed.dart';
part 'owner2.g.dart';

@Freezed()
abstract class Owner2 with _$Owner2 {
  const factory Owner2({
    required String id,
    required String name,
    required String phone,
    required Role role,
    required bool active,
    required bool mustChangePassword,
    required DateTime? lastLoginAt,
    required DateTime createdAt,
  }) = _Owner2;
  
  factory Owner2.fromJson(Map<String, Object?> json) => _$Owner2FromJson(json);
}
