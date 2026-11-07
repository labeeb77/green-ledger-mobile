// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'allocations7.dart';
import 'splits4.dart';

part 'create_customer_receipt_dto.freezed.dart';
part 'create_customer_receipt_dto.g.dart';

@Freezed()
abstract class CreateCustomerReceiptDto with _$CreateCustomerReceiptDto {
  const factory CreateCustomerReceiptDto({
    required String customerId,
    required List<Splits4> splits,
    String? receiptDate,
    String? notes,
    List<Allocations7>? allocations,
  }) = _CreateCustomerReceiptDto;

  factory CreateCustomerReceiptDto.fromJson(Map<String, Object?> json) => _$CreateCustomerReceiptDtoFromJson(json);
}
