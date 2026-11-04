// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_expense_category_dto.freezed.dart';
part 'create_expense_category_dto.g.dart';

@Freezed()
abstract class CreateExpenseCategoryDto with _$CreateExpenseCategoryDto {
  const factory CreateExpenseCategoryDto({
    required String name,
    @Default(false)
    bool allowedForGodown,
    @Default(false)
    bool allowedForAgent,
  }) = _CreateExpenseCategoryDto;
  
  factory CreateExpenseCategoryDto.fromJson(Map<String, Object?> json) => _$CreateExpenseCategoryDtoFromJson(json);
}
