// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'allocations7.dart';
import 'open_bills2.dart';

part 'receipt_allocation_preview_dto_output.freezed.dart';
part 'receipt_allocation_preview_dto_output.g.dart';

@Freezed()
abstract class ReceiptAllocationPreviewDtoOutput with _$ReceiptAllocationPreviewDtoOutput {
  const factory ReceiptAllocationPreviewDtoOutput({
    required List<OpenBills2> openBills,
    required List<Allocations7> allocations,
    required int advance,
    required int existingAdvance,
  }) = _ReceiptAllocationPreviewDtoOutput;
  
  factory ReceiptAllocationPreviewDtoOutput.fromJson(Map<String, Object?> json) => _$ReceiptAllocationPreviewDtoOutputFromJson(json);
}
