// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'size_type.dart';

part 'pack_units.freezed.dart';
part 'pack_units.g.dart';

@Freezed()
abstract class PackUnits with _$PackUnits {
  const factory PackUnits({
    required String id,
    required String name,
    required SizeType sizeType,
    required String? size,
    required bool active,
  }) = _PackUnits;
  
  factory PackUnits.fromJson(Map<String, Object?> json) => _$PackUnitsFromJson(json);
}
