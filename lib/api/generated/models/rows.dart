// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'previous.dart';

part 'rows.freezed.dart';
part 'rows.g.dart';

@Freezed()
abstract class Rows with _$Rows {
  const factory Rows({
    required String productId,
    required String productName,
    required String? packUnitId,
    required String unitLabel,
    required int? rate,
    required Previous? previous,
  }) = _Rows;

  factory Rows.fromJson(Map<String, Object?> json) => _$RowsFromJson(json);
}
