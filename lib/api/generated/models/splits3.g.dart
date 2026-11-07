// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splits3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Splits3 _$Splits3FromJson(Map<String, dynamic> json) => _Splits3(
  id: json['id'] as String,
  method: Method.fromJson(json['method'] as String),
  account: Account2.fromJson(json['account'] as Map<String, dynamic>),
  amount: (json['amount'] as num).toInt(),
  reference: json['reference'] as String?,
  screenshotUrl: json['screenshotUrl'] as String?,
  verified: json['verified'] as bool,
  cheque: json['cheque'] == null ? null : Cheque.fromJson(json['cheque'] as Map<String, dynamic>),
);

Map<String, dynamic> _$Splits3ToJson(_Splits3 instance) => <String, dynamic>{
  'id': instance.id,
  'method': instance.method,
  'account': instance.account,
  'amount': instance.amount,
  'reference': instance.reference,
  'screenshotUrl': instance.screenshotUrl,
  'verified': instance.verified,
  'cheque': instance.cheque,
};
