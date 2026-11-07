// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'grades.dart';
import 'pack_units.dart';
import 'product_dto_output_stock_unit.dart';

part 'product_dto_output.freezed.dart';
part 'product_dto_output.g.dart';

@Freezed()
abstract class ProductDtoOutput with _$ProductDtoOutput {
  const factory ProductDtoOutput({
    required String id,
    required String nameEn,
    required String? nameMl,
    required String? category,
    required ProductDtoOutputStockUnit stockUnit,
    required int? minimumRate,
    required String? lowStockLevel,
    required bool active,
    required List<PackUnits> packUnits,
    required List<Grades> grades,
  }) = _ProductDtoOutput;

  factory ProductDtoOutput.fromJson(Map<String, Object?> json) => _$ProductDtoOutputFromJson(json);
}
