// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lines18.freezed.dart';
part 'lines18.g.dart';

@Freezed()
abstract class Lines18 with _$Lines18 {
  const factory Lines18({
    required dynamic quantity,
    String? billLineId,
    String? productId,
    String? packUnitId,
    dynamic packCount,

    /// Amount in paise (₹1 = 100)
    int? rate,
  }) = _Lines18;
  
  factory Lines18.fromJson(Map<String, Object?> json) => _$Lines18FromJson(json);
}
