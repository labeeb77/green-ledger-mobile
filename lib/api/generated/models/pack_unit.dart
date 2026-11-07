// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pack_unit.freezed.dart';
part 'pack_unit.g.dart';

@Freezed()
abstract class PackUnit with _$PackUnit {
  const factory PackUnit({required String id, required String name}) = _PackUnit;

  factory PackUnit.fromJson(Map<String, Object?> json) => _$PackUnitFromJson(json);
}
