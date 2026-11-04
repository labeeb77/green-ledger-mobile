// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_product_dto.freezed.dart';
part 'update_product_dto.g.dart';

@Freezed()
abstract class UpdateProductDto with _$UpdateProductDto {
  const factory UpdateProductDto({
    String? nameEn,
    String? nameMl,
    String? category,

    /// Amount in paise (₹1 = 100)
    int? minimumRate,
    dynamic lowStockLevel,
    bool? active,
  }) = _UpdateProductDto;
  
  factory UpdateProductDto.fromJson(Map<String, Object?> json) => _$UpdateProductDtoFromJson(json);
}
