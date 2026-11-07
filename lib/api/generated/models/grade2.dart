// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade2.freezed.dart';
part 'grade2.g.dart';

@Freezed()
abstract class Grade2 with _$Grade2 {
  const factory Grade2({required String id, required String name}) = _Grade2;

  factory Grade2.fromJson(Map<String, Object?> json) => _$Grade2FromJson(json);
}
