// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_now.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayNow _$PayNowFromJson(Map<String, dynamic> json) => _PayNow(
  method: Method.fromJson(json['method'] as String),
  amount: (json['amount'] as num).toInt(),
  accountId: json['accountId'] as String?,
  reference: json['reference'] as String?,
  screenshotFileId: json['screenshotFileId'] as String?,
  chequeNo: json['chequeNo'] as String?,
  chequeBank: json['chequeBank'] as String?,
  chequeDate: json['chequeDate'] == null
      ? null
      : DateTime.parse(json['chequeDate'] as String),
);

Map<String, dynamic> _$PayNowToJson(_PayNow instance) => <String, dynamic>{
  'method': instance.method,
  'amount': instance.amount,
  'accountId': instance.accountId,
  'reference': instance.reference,
  'screenshotFileId': instance.screenshotFileId,
  'chequeNo': instance.chequeNo,
  'chequeBank': instance.chequeBank,
  'chequeDate': instance.chequeDate?.toIso8601String(),
};
