// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'rates.dart';

part 'set_daily_rates_dto.freezed.dart';
part 'set_daily_rates_dto.g.dart';

@Freezed()
abstract class SetDailyRatesDto with _$SetDailyRatesDto {
  const factory SetDailyRatesDto({
    required DateTime date,
    required List<Rates> rates,
  }) = _SetDailyRatesDto;
  
  factory SetDailyRatesDto.fromJson(Map<String, Object?> json) => _$SetDailyRatesDtoFromJson(json);
}
