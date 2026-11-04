// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lines6.freezed.dart';
part 'lines6.g.dart';

@Freezed()
abstract class Lines6 with _$Lines6 {
  const factory Lines6({
    required String productId,
    required dynamic quantity,

    /// Amount in paise (₹1 = 100)
    required int rate,
    String? packUnitId,
    dynamic packCount,
  }) = _Lines6;
  
  factory Lines6.fromJson(Map<String, Object?> json) => _$Lines6FromJson(json);
}
