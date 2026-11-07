// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'low_stock2.freezed.dart';
part 'low_stock2.g.dart';

@Freezed()
abstract class LowStock2 with _$LowStock2 {
  const factory LowStock2({
    required String productId,
    required String name,
    required String stockUnit,
    required String quantity,
    required String lowStockLevel,
  }) = _LowStock2;

  factory LowStock2.fromJson(Map<String, Object?> json) => _$LowStock2FromJson(json);
}
