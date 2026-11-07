// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_expense_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateExpenseCategoryDto _$UpdateExpenseCategoryDtoFromJson(Map<String, dynamic> json) => _UpdateExpenseCategoryDto(
  name: json['name'] as String?,
  allowedForGodown: json['allowedForGodown'] as bool?,
  allowedForAgent: json['allowedForAgent'] as bool?,
  active: json['active'] as bool?,
);

Map<String, dynamic> _$UpdateExpenseCategoryDtoToJson(_UpdateExpenseCategoryDto instance) => <String, dynamic>{
  'name': instance.name,
  'allowedForGodown': instance.allowedForGodown,
  'allowedForAgent': instance.allowedForAgent,
  'active': instance.active,
};
