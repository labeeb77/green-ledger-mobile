// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_expense_category_dto.freezed.dart';
part 'update_expense_category_dto.g.dart';

@Freezed()
abstract class UpdateExpenseCategoryDto with _$UpdateExpenseCategoryDto {
  const factory UpdateExpenseCategoryDto({String? name, bool? allowedForGodown, bool? allowedForAgent, bool? active}) =
      _UpdateExpenseCategoryDto;

  factory UpdateExpenseCategoryDto.fromJson(Map<String, Object?> json) => _$UpdateExpenseCategoryDtoFromJson(json);
}
