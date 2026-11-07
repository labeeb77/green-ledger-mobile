// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'unit.dart';

part 'by_unit.freezed.dart';
part 'by_unit.g.dart';

@Freezed()
abstract class ByUnit with _$ByUnit {
  const factory ByUnit({required Unit unit, required String quantity}) = _ByUnit;

  factory ByUnit.fromJson(Map<String, Object?> json) => _$ByUnitFromJson(json);
}
