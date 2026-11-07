// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_expense_dto.freezed.dart';
part 'create_expense_dto.g.dart';

@Freezed()
abstract class CreateExpenseDto with _$CreateExpenseDto {
  const factory CreateExpenseDto({
    required String categoryId,
    required String accountId,
    required int amount,
    String? expenseDate,
    String? reference,
    String? notes,
  }) = _CreateExpenseDto;

  factory CreateExpenseDto.fromJson(Map<String, Object?> json) => _$CreateExpenseDtoFromJson(json);
}
