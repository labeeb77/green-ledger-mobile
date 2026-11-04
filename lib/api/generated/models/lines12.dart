// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'rate_per.dart';

part 'lines12.freezed.dart';
part 'lines12.g.dart';

@Freezed()
abstract class Lines12 with _$Lines12 {
  const factory Lines12({
    required String productId,

    /// Amount in paise (₹1 = 100)
    required int rate,
    @Default(RatePer.stockUnit)
    RatePer ratePer,
    String? gradeId,
    String? packUnitId,
    dynamic packCount,
    dynamic quantity,
  }) = _Lines12;
  
  factory Lines12.fromJson(Map<String, Object?> json) => _$Lines12FromJson(json);
}
