// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'update_price_group_dto_adjustment_type.dart';

part 'update_price_group_dto.freezed.dart';
part 'update_price_group_dto.g.dart';

@Freezed()
abstract class UpdatePriceGroupDto with _$UpdatePriceGroupDto {
  const factory UpdatePriceGroupDto({
    String? name,
    UpdatePriceGroupDtoAdjustmentType? adjustmentType,
    int? value,
    bool? active,
  }) = _UpdatePriceGroupDto;
  
  factory UpdatePriceGroupDto.fromJson(Map<String, Object?> json) => _$UpdatePriceGroupDtoFromJson(json);
}
