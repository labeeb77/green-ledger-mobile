// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_product_dto_stock_unit.dart';
import 'pack_units2.dart';

part 'create_product_dto.freezed.dart';
part 'create_product_dto.g.dart';

@Freezed()
abstract class CreateProductDto with _$CreateProductDto {
  const factory CreateProductDto({
    required String nameEn,
    required CreateProductDtoStockUnit stockUnit,
    @Default([])
    List<String> grades,
    String? nameMl,
    String? category,

    /// Amount in paise (₹1 = 100)
    int? minimumRate,
    dynamic lowStockLevel,
    List<PackUnits2>? packUnits,
  }) = _CreateProductDto;
  
  factory CreateProductDto.fromJson(Map<String, Object?> json) => _$CreateProductDtoFromJson(json);
}
