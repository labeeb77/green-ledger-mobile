// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_method2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ByMethod2 _$ByMethod2FromJson(Map<String, dynamic> json) => _ByMethod2(
  cash: (json['cash'] as num).toInt(),
  upi: (json['upi'] as num).toInt(),
  bankTransfer: (json['bank_transfer'] as num).toInt(),
  cheque: (json['cheque'] as num).toInt(),
);

Map<String, dynamic> _$ByMethod2ToJson(_ByMethod2 instance) => <String, dynamic>{
  'cash': instance.cash,
  'upi': instance.upi,
  'bank_transfer': instance.bankTransfer,
  'cheque': instance.cheque,
};
