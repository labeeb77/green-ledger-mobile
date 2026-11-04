// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_category_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseCategoryDtoOutput _$ExpenseCategoryDtoOutputFromJson(
  Map<String, dynamic> json,
) => _ExpenseCategoryDtoOutput(
  id: json['id'] as String,
  name: json['name'] as String,
  allowedForGodown: json['allowedForGodown'] as bool,
  allowedForAgent: json['allowedForAgent'] as bool,
  active: json['active'] as bool,
);

Map<String, dynamic> _$ExpenseCategoryDtoOutputToJson(
  _ExpenseCategoryDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'allowedForGodown': instance.allowedForGodown,
  'allowedForAgent': instance.allowedForAgent,
  'active': instance.active,
};
