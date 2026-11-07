// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'created_by.dart';
import 'goods_receipt_dto_output_billing.dart';
import 'goods_receipt_dto_output_status.dart';
import 'lines.dart';
import 'supplier.dart';

part 'goods_receipt_dto_output.freezed.dart';
part 'goods_receipt_dto_output.g.dart';

@Freezed()
abstract class GoodsReceiptDtoOutput with _$GoodsReceiptDtoOutput {
  const factory GoodsReceiptDtoOutput({
    required String id,
    required String number,
    required String receiptDate,
    required Supplier supplier,
    required String? vehicleNo,
    required String? notes,
    required String? slipPhotoUrl,
    required GoodsReceiptDtoOutputStatus status,
    required GoodsReceiptDtoOutputBilling billing,
    required List<Lines> lines,
    required CreatedBy? createdBy,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _GoodsReceiptDtoOutput;

  factory GoodsReceiptDtoOutput.fromJson(Map<String, Object?> json) => _$GoodsReceiptDtoOutputFromJson(json);
}
