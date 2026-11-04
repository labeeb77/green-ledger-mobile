// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'rate_per.dart';

part 'lines15.freezed.dart';
part 'lines15.g.dart';

@Freezed()
abstract class Lines15 with _$Lines15 {
  const factory Lines15({
    required String productId,

    /// Amount in paise (₹1 = 100)
    required int rate,
    @Default(RatePer.stockUnit)
    RatePer ratePer,
    String? packUnitId,
    dynamic packCount,
    dynamic quantity,
  }) = _Lines15;
  
  factory Lines15.fromJson(Map<String, Object?> json) => _$Lines15FromJson(json);
}
