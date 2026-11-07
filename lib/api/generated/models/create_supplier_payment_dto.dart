// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'allocations3.dart';
import 'splits2.dart';

part 'create_supplier_payment_dto.freezed.dart';
part 'create_supplier_payment_dto.g.dart';

@Freezed()
abstract class CreateSupplierPaymentDto with _$CreateSupplierPaymentDto {
  const factory CreateSupplierPaymentDto({
    required String supplierId,
    required List<Splits2> splits,
    String? paymentDate,
    String? notes,
    List<Allocations3>? allocations,
  }) = _CreateSupplierPaymentDto;

  factory CreateSupplierPaymentDto.fromJson(Map<String, Object?> json) => _$CreateSupplierPaymentDtoFromJson(json);
}
