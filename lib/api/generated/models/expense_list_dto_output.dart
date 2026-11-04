// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'items2.dart';

part 'expense_list_dto_output.freezed.dart';
part 'expense_list_dto_output.g.dart';

@Freezed()
abstract class ExpenseListDtoOutput with _$ExpenseListDtoOutput {
  const factory ExpenseListDtoOutput({
    required List<Items2> items,
    required int total,
  }) = _ExpenseListDtoOutput;
  
  factory ExpenseListDtoOutput.fromJson(Map<String, Object?> json) => _$ExpenseListDtoOutputFromJson(json);
}
