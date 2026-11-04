// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseDtoOutput _$ExpenseDtoOutputFromJson(Map<String, dynamic> json) =>
    _ExpenseDtoOutput(
      id: json['id'] as String,
      number: json['number'] as String,
      expenseDate: DateTime.parse(json['expenseDate'] as String),
      category: Category2.fromJson(json['category'] as Map<String, dynamic>),
      account: Account5.fromJson(json['account'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toInt(),
      reference: json['reference'] as String?,
      notes: json['notes'] as String?,
      status: ExpenseDtoOutputStatus.fromJson(json['status'] as String),
      createdBy: json['createdBy'] == null
          ? null
          : CreatedBy8.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      cancelReason: json['cancelReason'] as String?,
    );

Map<String, dynamic> _$ExpenseDtoOutputToJson(_ExpenseDtoOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'expenseDate': instance.expenseDate.toIso8601String(),
      'category': instance.category,
      'account': instance.account,
      'amount': instance.amount,
      'reference': instance.reference,
      'notes': instance.notes,
      'status': instance.status,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'cancelReason': instance.cancelReason,
    };
