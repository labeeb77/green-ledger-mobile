// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'packs.dart';

part 'stock_row_dto_output.freezed.dart';
part 'stock_row_dto_output.g.dart';

@Freezed()
abstract class StockRowDtoOutput with _$StockRowDtoOutput {
  const factory StockRowDtoOutput({
    required String productId,
    required String name,
    required String? nameMl,
    required String stockUnit,
    required bool active,
    required String quantity,
    required List<Packs> packs,
    required String? lowStockLevel,
    required bool lowStock,
    required String wastageToday,
  }) = _StockRowDtoOutput;

  factory StockRowDtoOutput.fromJson(Map<String, Object?> json) => _$StockRowDtoOutputFromJson(json);
}
