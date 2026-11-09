// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status8.dart';

part 'due_soon.freezed.dart';
part 'due_soon.g.dart';

@Freezed()
abstract class DueSoon with _$DueSoon {
  const factory DueSoon({
    required String id,
    required String name,
    required Status8 status,
    required DateTime expiresAt,
  }) = _DueSoon;

  factory DueSoon.fromJson(Map<String, Object?> json) => _$DueSoonFromJson(json);
}
