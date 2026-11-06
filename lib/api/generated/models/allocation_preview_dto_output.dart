// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'allocations4.dart';
import 'open_bills.dart';

part 'allocation_preview_dto_output.freezed.dart';
part 'allocation_preview_dto_output.g.dart';

@Freezed()
abstract class AllocationPreviewDtoOutput with _$AllocationPreviewDtoOutput {
  const factory AllocationPreviewDtoOutput({
    required List<OpenBills> openBills,
    required List<Allocations4> allocations,
    required int advance,
    required int existingAdvance,
  }) = _AllocationPreviewDtoOutput;
  
  factory AllocationPreviewDtoOutput.fromJson(Map<String, Object?> json) => _$AllocationPreviewDtoOutputFromJson(json);
}
