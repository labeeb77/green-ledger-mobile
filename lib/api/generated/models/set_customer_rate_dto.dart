// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'set_customer_rate_dto_mode.dart';

part 'set_customer_rate_dto.freezed.dart';
part 'set_customer_rate_dto.g.dart';

@Freezed()
abstract class SetCustomerRateDto with _$SetCustomerRateDto {
  const factory SetCustomerRateDto({
    required SetCustomerRateDtoMode mode,
    required int value,
  }) = _SetCustomerRateDto;
  
  factory SetCustomerRateDto.fromJson(Map<String, Object?> json) => _$SetCustomerRateDtoFromJson(json);
}
