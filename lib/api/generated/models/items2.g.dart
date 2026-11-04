// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Items2 _$Items2FromJson(Map<String, dynamic> json) => _Items2(
  id: json['id'] as String,
  number: json['number'] as String,
  expenseDate: DateTime.parse(json['expenseDate'] as String),
  category: Category.fromJson(json['category'] as Map<String, dynamic>),
  account: Account4.fromJson(json['account'] as Map<String, dynamic>),
  amount: (json['amount'] as num).toInt(),
  reference: json['reference'] as String?,
  notes: json['notes'] as String?,
  status: Status3.fromJson(json['status'] as String),
  createdBy: json['createdBy'] == null
      ? null
      : CreatedBy7.fromJson(json['createdBy'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$Items2ToJson(_Items2 instance) => <String, dynamic>{
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
