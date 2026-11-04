// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'created_by2.dart';
import 'lines7.dart';
import 'stock_entry_dto_output_status.dart';
import 'stock_entry_dto_output_type.dart';

part 'stock_entry_dto_output.freezed.dart';
part 'stock_entry_dto_output.g.dart';

@Freezed()
abstract class StockEntryDtoOutput with _$StockEntryDtoOutput {
  const factory StockEntryDtoOutput({
    required String id,
    required String? number,
    required StockEntryDtoOutputType type,
    required DateTime entryDate,
    required StockEntryDtoOutputStatus status,
    required int? value,
    required String? notes,
    required String? photoUrl,
    required CreatedBy2? createdBy,
    required String? approvalId,
    required List<Lines7> lines,
    required List<String> warnings,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _StockEntryDtoOutput;
  
  factory StockEntryDtoOutput.fromJson(Map<String, Object?> json) => _$StockEntryDtoOutputFromJson(json);
}
