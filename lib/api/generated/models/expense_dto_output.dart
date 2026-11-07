// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account4.dart';
import 'category.dart';
import 'created_by7.dart';
import 'expense_dto_output_status.dart';

part 'expense_dto_output.freezed.dart';
part 'expense_dto_output.g.dart';

@Freezed()
abstract class ExpenseDtoOutput with _$ExpenseDtoOutput {
  const factory ExpenseDtoOutput({
    required String id,
    required String number,
    required String expenseDate,
    required Category category,
    required Account4 account,
    required int amount,
    required String? reference,
    required String? notes,
    required ExpenseDtoOutputStatus status,
    required CreatedBy7? createdBy,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _ExpenseDtoOutput;

  factory ExpenseDtoOutput.fromJson(Map<String, Object?> json) => _$ExpenseDtoOutputFromJson(json);
}
