// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'permission.dart';
import 'level.dart';

part 'overrides2.freezed.dart';
part 'overrides2.g.dart';

@Freezed()
abstract class Overrides2 with _$Overrides2 {
  const factory Overrides2({
    required Permission permission,
    required Level level,
  }) = _Overrides2;
  
  factory Overrides2.fromJson(Map<String, Object?> json) => _$Overrides2FromJson(json);
}
