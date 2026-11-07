// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'create_price_group_dto_adjustment_type.dart';

part 'create_price_group_dto.freezed.dart';
part 'create_price_group_dto.g.dart';

@Freezed()
abstract class CreatePriceGroupDto with _$CreatePriceGroupDto {
  const factory CreatePriceGroupDto({
    required String name,
    required CreatePriceGroupDtoAdjustmentType adjustmentType,
    required int value,
  }) = _CreatePriceGroupDto;

  factory CreatePriceGroupDto.fromJson(Map<String, Object?> json) => _$CreatePriceGroupDtoFromJson(json);
}
