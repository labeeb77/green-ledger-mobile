// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_expense_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateExpenseCategoryDto _$CreateExpenseCategoryDtoFromJson(Map<String, dynamic> json) => _CreateExpenseCategoryDto(
  name: json['name'] as String,
  allowedForGodown: json['allowedForGodown'] as bool? ?? false,
  allowedForAgent: json['allowedForAgent'] as bool? ?? false,
);

Map<String, dynamic> _$CreateExpenseCategoryDtoToJson(_CreateExpenseCategoryDto instance) => <String, dynamic>{
  'name': instance.name,
  'allowedForGodown': instance.allowedForGodown,
  'allowedForAgent': instance.allowedForAgent,
};
