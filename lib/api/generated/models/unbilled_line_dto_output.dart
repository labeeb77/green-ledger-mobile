// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'grade2.dart';
import 'pack_unit2.dart';
import 'product2.dart';

part 'unbilled_line_dto_output.freezed.dart';
part 'unbilled_line_dto_output.g.dart';

@Freezed()
abstract class UnbilledLineDtoOutput with _$UnbilledLineDtoOutput {
  const factory UnbilledLineDtoOutput({
    required String goodsReceiptLineId,
    required String receiptId,
    required String receiptNumber,
    required DateTime receiptDate,
    required Product2 product,
    required Grade2? grade,
    required PackUnit2? packUnit,
    required String? packCount,
    required String net,
    required int? rate,
  }) = _UnbilledLineDtoOutput;
  
  factory UnbilledLineDtoOutput.fromJson(Map<String, Object?> json) => _$UnbilledLineDtoOutputFromJson(json);
}
