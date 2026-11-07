// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lines2.freezed.dart';
part 'lines2.g.dart';

@Freezed()
abstract class Lines2 with _$Lines2 {
  const factory Lines2({
    required String productId,
    String? gradeId,
    String? packUnitId,
    dynamic packCount,
    dynamic gross,
    dynamic tare,
    dynamic net,

    /// Amount in paise (₹1 = 100)
    int? rate,
  }) = _Lines2;

  factory Lines2.fromJson(Map<String, Object?> json) => _$Lines2FromJson(json);
}
