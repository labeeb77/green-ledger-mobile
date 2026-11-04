// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'low_stock.freezed.dart';
part 'low_stock.g.dart';

@Freezed()
abstract class LowStock with _$LowStock {
  const factory LowStock({
    required String productId,
    required String name,
    required String stockUnit,
    required String quantity,
    required String lowStockLevel,
  }) = _LowStock;
  
  factory LowStock.fromJson(Map<String, Object?> json) => _$LowStockFromJson(json);
}
