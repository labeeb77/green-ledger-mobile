// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splits4.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Splits4 _$Splits4FromJson(Map<String, dynamic> json) => _Splits4(
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

Map<String, dynamic> _$Splits4ToJson(_Splits4 instance) => <String, dynamic>{
  'method': instance.method,
  'amount': instance.amount,
  'accountId': instance.accountId,
  'reference': instance.reference,
  'screenshotFileId': instance.screenshotFileId,
  'chequeNo': instance.chequeNo,
  'chequeBank': instance.chequeBank,
  'chequeDate': instance.chequeDate?.toIso8601String(),
};
