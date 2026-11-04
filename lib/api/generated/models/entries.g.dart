// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Entries _$EntriesFromJson(Map<String, dynamic> json) => _Entries(
  id: json['id'] as String,
  date: DateTime.parse(json['date'] as String),
  kind: json['kind'] as String,
  description: json['description'] as String,
  reference: json['reference'] as String?,
  sourceType: json['sourceType'] as String,
  sourceId: json['sourceId'] as String,
  amount: (json['amount'] as num).toInt(),
  dueDate: json['dueDate'] as String?,
  balance: (json['balance'] as num).toInt(),
);

Map<String, dynamic> _$EntriesToJson(_Entries instance) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date.toIso8601String(),
  'kind': instance.kind,
  'description': instance.description,
  'reference': instance.reference,
  'sourceType': instance.sourceType,
  'sourceId': instance.sourceId,
  'amount': instance.amount,
  'dueDate': instance.dueDate,
  'balance': instance.balance,
};
