// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_expense_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateExpenseDto _$CreateExpenseDtoFromJson(Map<String, dynamic> json) => _CreateExpenseDto(
  categoryId: json['categoryId'] as String,
  accountId: json['accountId'] as String,
  amount: (json['amount'] as num).toInt(),
  expenseDate: json['expenseDate'] as String?,
  reference: json['reference'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$CreateExpenseDtoToJson(_CreateExpenseDto instance) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'accountId': instance.accountId,
  'amount': instance.amount,
  'expenseDate': instance.expenseDate,
  'reference': instance.reference,
  'notes': instance.notes,
};
