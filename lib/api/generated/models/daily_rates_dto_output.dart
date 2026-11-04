// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'rows.dart';

part 'daily_rates_dto_output.freezed.dart';
part 'daily_rates_dto_output.g.dart';

@Freezed()
abstract class DailyRatesDtoOutput with _$DailyRatesDtoOutput {
  const factory DailyRatesDtoOutput({
    required DateTime date,
    required List<Rows> rows,
  }) = _DailyRatesDtoOutput;
  
  factory DailyRatesDtoOutput.fromJson(Map<String, Object?> json) => _$DailyRatesDtoOutputFromJson(json);
}
