// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Splits _$SplitsFromJson(Map<String, dynamic> json) => _Splits(
  method: Method.fromJson(json['method'] as String),
  account: Account.fromJson(json['account'] as Map<String, dynamic>),
  amount: (json['amount'] as num).toInt(),
  reference: json['reference'] as String?,
);

Map<String, dynamic> _$SplitsToJson(_Splits instance) => <String, dynamic>{
  'method': instance.method,
  'account': instance.account,
  'amount': instance.amount,
  'reference': instance.reference,
};
