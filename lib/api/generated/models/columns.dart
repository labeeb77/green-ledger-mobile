// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'kind3.dart';

part 'columns.freezed.dart';
part 'columns.g.dart';

@Freezed()
abstract class Columns with _$Columns {
  const factory Columns({
    required String key,
    required String label,
    required Kind3 kind,
  }) = _Columns;
  
  factory Columns.fromJson(Map<String, Object?> json) => _$ColumnsFromJson(json);
}
