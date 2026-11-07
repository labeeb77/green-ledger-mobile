// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_list_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseListDtoOutput _$ExpenseListDtoOutputFromJson(Map<String, dynamic> json) => _ExpenseListDtoOutput(
  items: (json['items'] as List<dynamic>).map((e) => ExpenseDtoOutput.fromJson(e as Map<String, dynamic>)).toList(),
  total: (json['total'] as num).toInt(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$ExpenseListDtoOutputToJson(_ExpenseListDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'nextCursor': instance.nextCursor,
};
