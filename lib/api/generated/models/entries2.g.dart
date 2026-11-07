// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Entries2 _$Entries2FromJson(Map<String, dynamic> json) => _Entries2(
  id: json['id'] as String,
  date: json['date'] as String,
  reason: Reason2.fromJson(json['reason'] as String),
  reference: json['reference'] as String?,
  sourceType: json['sourceType'] as String,
  sourceId: json['sourceId'] as String,
  user: json['user'] == null ? null : User5.fromJson(json['user'] as Map<String, dynamic>),
  quantity: json['quantity'] as String,
  packCount: json['packCount'] as String?,
  packUnit: json['packUnit'] as String?,
  balance: json['balance'] as String,
);

Map<String, dynamic> _$Entries2ToJson(_Entries2 instance) => <String, dynamic>{
  'id': instance.id,
  'date': instance.date,
  'reason': instance.reason,
  'reference': instance.reference,
  'sourceType': instance.sourceType,
  'sourceId': instance.sourceId,
  'user': instance.user,
  'quantity': instance.quantity,
  'packCount': instance.packCount,
  'packUnit': instance.packUnit,
  'balance': instance.balance,
};
