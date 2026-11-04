// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'link5.dart';

part 'expenses.freezed.dart';
part 'expenses.g.dart';

@Freezed()
abstract class Expenses with _$Expenses {
  const factory Expenses({
    required int total,
    required Link5 link,
  }) = _Expenses;
  
  factory Expenses.fromJson(Map<String, Object?> json) => _$ExpensesFromJson(json);
}
