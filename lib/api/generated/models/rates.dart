// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates.freezed.dart';
part 'rates.g.dart';

@Freezed()
abstract class Rates with _$Rates {
  const factory Rates({
    required String productId,
    required String? packUnitId,

    /// Amount in paise (₹1 = 100)
    required int? rate,
  }) = _Rates;
  
  factory Rates.fromJson(Map<String, Object?> json) => _$RatesFromJson(json);
}
