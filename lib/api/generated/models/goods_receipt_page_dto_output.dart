// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'goods_receipt_dto_output.dart';

part 'goods_receipt_page_dto_output.freezed.dart';
part 'goods_receipt_page_dto_output.g.dart';

@Freezed()
abstract class GoodsReceiptPageDtoOutput with _$GoodsReceiptPageDtoOutput {
  const factory GoodsReceiptPageDtoOutput({
    required List<GoodsReceiptDtoOutput> items,
    required String? nextCursor,
  }) = _GoodsReceiptPageDtoOutput;
  
  factory GoodsReceiptPageDtoOutput.fromJson(Map<String, Object?> json) => _$GoodsReceiptPageDtoOutputFromJson(json);
}
