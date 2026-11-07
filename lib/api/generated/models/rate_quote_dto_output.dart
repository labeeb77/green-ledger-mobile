// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'last_rate.dart';
import 'rate_quote_dto_output_rate_per.dart';
import 'rate_quote_dto_output_source.dart';

part 'rate_quote_dto_output.freezed.dart';
part 'rate_quote_dto_output.g.dart';

@Freezed()
abstract class RateQuoteDtoOutput with _$RateQuoteDtoOutput {
  const factory RateQuoteDtoOutput({
    required int? rate,
    required RateQuoteDtoOutputSource source,
    required int? dailyRate,
    required String? dailyRateDate,
    required int? minimumRate,
    required bool belowMinimum,
    required RateQuoteDtoOutputRatePer ratePer,
    required LastRate? lastRate,
  }) = _RateQuoteDtoOutput;

  factory RateQuoteDtoOutput.fromJson(Map<String, Object?> json) => _$RateQuoteDtoOutputFromJson(json);
}
