// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines2.dart';

part 'create_goods_receipt_dto.freezed.dart';
part 'create_goods_receipt_dto.g.dart';

@Freezed()
abstract class CreateGoodsReceiptDto with _$CreateGoodsReceiptDto {
  const factory CreateGoodsReceiptDto({
    required String supplierId,
    required List<Lines2> lines,
    String? receiptDate,
    String? vehicleNo,
    String? notes,
    String? slipPhotoFileId,
  }) = _CreateGoodsReceiptDto;

  factory CreateGoodsReceiptDto.fromJson(Map<String, Object?> json) => _$CreateGoodsReceiptDtoFromJson(json);
}
