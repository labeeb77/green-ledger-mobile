// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product3.dart';

part 'lines4.freezed.dart';
part 'lines4.g.dart';

@Freezed()
abstract class Lines4 with _$Lines4 {
  const factory Lines4({
    required String id,
    required String goodsReceiptLineId,
    required String receiptNumber,
    required Product3 product,
    required String quantity,
    required int rate,
    required int amount,
  }) = _Lines4;

  factory Lines4.fromJson(Map<String, Object?> json) => _$Lines4FromJson(json);
}
