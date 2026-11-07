// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'lines3.dart';

part 'create_purchase_bill_dto.freezed.dart';
part 'create_purchase_bill_dto.g.dart';

@Freezed()
abstract class CreatePurchaseBillDto with _$CreatePurchaseBillDto {
  const factory CreatePurchaseBillDto({
    required String supplierId,
    required List<Lines3> lines,
    @Default(0) int adjustment,
    String? billDate,
    String? dueDate,
    String? supplierInvoiceNo,
    String? notes,
  }) = _CreatePurchaseBillDto;

  factory CreatePurchaseBillDto.fromJson(Map<String, Object?> json) => _$CreatePurchaseBillDtoFromJson(json);
}
