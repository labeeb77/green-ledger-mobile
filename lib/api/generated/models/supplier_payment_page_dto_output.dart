// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'supplier_payment_dto_output.dart';

part 'supplier_payment_page_dto_output.freezed.dart';
part 'supplier_payment_page_dto_output.g.dart';

@Freezed()
abstract class SupplierPaymentPageDtoOutput with _$SupplierPaymentPageDtoOutput {
  const factory SupplierPaymentPageDtoOutput({
    required List<SupplierPaymentDtoOutput> items,
    required String? nextCursor,
  }) = _SupplierPaymentPageDtoOutput;

  factory SupplierPaymentPageDtoOutput.fromJson(Map<String, Object?> json) =>
      _$SupplierPaymentPageDtoOutputFromJson(json);
}
