// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'price_group_dto_output_adjustment_type.dart';

part 'price_group_dto_output.freezed.dart';
part 'price_group_dto_output.g.dart';

@Freezed()
abstract class PriceGroupDtoOutput with _$PriceGroupDtoOutput {
  const factory PriceGroupDtoOutput({
    required String id,
    required String name,
    required PriceGroupDtoOutputAdjustmentType adjustmentType,
    required int value,
    required bool active,
  }) = _PriceGroupDtoOutput;
  
  factory PriceGroupDtoOutput.fromJson(Map<String, Object?> json) => _$PriceGroupDtoOutputFromJson(json);
}
