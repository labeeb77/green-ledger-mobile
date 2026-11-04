// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lines3.freezed.dart';
part 'lines3.g.dart';

@Freezed()
abstract class Lines3 with _$Lines3 {
  const factory Lines3({
    required String goodsReceiptLineId,

    /// Amount in paise (₹1 = 100)
    int? rate,
  }) = _Lines3;
  
  factory Lines3.fromJson(Map<String, Object?> json) => _$Lines3FromJson(json);
}
