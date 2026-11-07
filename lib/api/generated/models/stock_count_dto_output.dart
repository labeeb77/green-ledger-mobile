// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'created_by3.dart';
import 'lines10.dart';
import 'stock_count_dto_output_status.dart';

part 'stock_count_dto_output.freezed.dart';
part 'stock_count_dto_output.g.dart';

@Freezed()
abstract class StockCountDtoOutput with _$StockCountDtoOutput {
  const factory StockCountDtoOutput({
    required String id,
    required String? number,
    required String countDate,
    required StockCountDtoOutputStatus status,
    required String? notes,
    required CreatedBy3? createdBy,
    required String? approvalId,
    required List<Lines10> lines,
    required DateTime? postedAt,
    required DateTime createdAt,
  }) = _StockCountDtoOutput;

  factory StockCountDtoOutput.fromJson(Map<String, Object?> json) => _$StockCountDtoOutputFromJson(json);
}
