// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_receipt_dto_output.dart';

part 'customer_receipt_page_dto_output.freezed.dart';
part 'customer_receipt_page_dto_output.g.dart';

@Freezed()
abstract class CustomerReceiptPageDtoOutput with _$CustomerReceiptPageDtoOutput {
  const factory CustomerReceiptPageDtoOutput({
    required List<CustomerReceiptDtoOutput> items,
    required int total,
    required String? nextCursor,
  }) = _CustomerReceiptPageDtoOutput;

  factory CustomerReceiptPageDtoOutput.fromJson(Map<String, Object?> json) =>
      _$CustomerReceiptPageDtoOutputFromJson(json);
}
