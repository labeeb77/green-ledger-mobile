// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splits2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Splits2 _$Splits2FromJson(Map<String, dynamic> json) => _Splits2(
  method: Method.fromJson(json['method'] as String),
  accountId: json['accountId'] as String,
  amount: (json['amount'] as num).toInt(),
  reference: json['reference'] as String?,
);

Map<String, dynamic> _$Splits2ToJson(_Splits2 instance) => <String, dynamic>{
  'method': instance.method,
  'accountId': instance.accountId,
  'amount': instance.amount,
  'reference': instance.reference,
};
