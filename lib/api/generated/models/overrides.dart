// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'level.dart';

part 'overrides.freezed.dart';
part 'overrides.g.dart';

@Freezed()
abstract class Overrides with _$Overrides {
  const factory Overrides({required String permission, required Level level}) = _Overrides;

  factory Overrides.fromJson(Map<String, Object?> json) => _$OverridesFromJson(json);
}
