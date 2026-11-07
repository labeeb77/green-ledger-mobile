// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_category_dto_output.freezed.dart';
part 'expense_category_dto_output.g.dart';

@Freezed()
abstract class ExpenseCategoryDtoOutput with _$ExpenseCategoryDtoOutput {
  const factory ExpenseCategoryDtoOutput({
    required String id,
    required String name,
    required bool allowedForGodown,
    required bool allowedForAgent,
    required bool active,
  }) = _ExpenseCategoryDtoOutput;

  factory ExpenseCategoryDtoOutput.fromJson(Map<String, Object?> json) => _$ExpenseCategoryDtoOutputFromJson(json);
}
