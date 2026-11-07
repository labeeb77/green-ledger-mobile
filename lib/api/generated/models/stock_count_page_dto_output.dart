// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'stock_count_dto_output.dart';

part 'stock_count_page_dto_output.freezed.dart';
part 'stock_count_page_dto_output.g.dart';

@Freezed()
abstract class StockCountPageDtoOutput with _$StockCountPageDtoOutput {
  const factory StockCountPageDtoOutput({
    required List<StockCountDtoOutput> items,
    required String? nextCursor,
  }) = _StockCountPageDtoOutput;
  
  factory StockCountPageDtoOutput.fromJson(Map<String, Object?> json) => _$StockCountPageDtoOutputFromJson(json);
}
