// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'stock_entry_dto_output.dart';

part 'stock_entry_page_dto_output.freezed.dart';
part 'stock_entry_page_dto_output.g.dart';

@Freezed()
abstract class StockEntryPageDtoOutput with _$StockEntryPageDtoOutput {
  const factory StockEntryPageDtoOutput({required List<StockEntryDtoOutput> items, required String? nextCursor}) =
      _StockEntryPageDtoOutput;

  factory StockEntryPageDtoOutput.fromJson(Map<String, Object?> json) => _$StockEntryPageDtoOutputFromJson(json);
}
