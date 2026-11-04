// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'size_type.dart';

part 'pack_units2.freezed.dart';
part 'pack_units2.g.dart';

@Freezed()
abstract class PackUnits2 with _$PackUnits2 {
  const factory PackUnits2({
    required String name,
    required SizeType sizeType,
    dynamic size,
  }) = _PackUnits2;
  
  factory PackUnits2.fromJson(Map<String, Object?> json) => _$PackUnits2FromJson(json);
}
