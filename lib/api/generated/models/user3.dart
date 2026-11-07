// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'user3.freezed.dart';
part 'user3.g.dart';

@Freezed()
abstract class User3 with _$User3 {
  const factory User3({
    required String id,
    required String name,
    required String phone,
    required Role role,
    required bool active,
    required bool mustChangePassword,
    required DateTime? lastLoginAt,
    required DateTime createdAt,
  }) = _User3;

  factory User3.fromJson(Map<String, Object?> json) => _$User3FromJson(json);
}
