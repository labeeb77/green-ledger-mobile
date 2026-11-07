// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_method3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ByMethod3 _$ByMethod3FromJson(Map<String, dynamic> json) => _ByMethod3(
  cash: (json['cash'] as num).toInt(),
  upi: (json['upi'] as num).toInt(),
  bankTransfer: (json['bank_transfer'] as num).toInt(),
  cheque: (json['cheque'] as num).toInt(),
);

Map<String, dynamic> _$ByMethod3ToJson(_ByMethod3 instance) => <String, dynamic>{
  'cash': instance.cash,
  'upi': instance.upi,
  'bank_transfer': instance.bankTransfer,
  'cheque': instance.cheque,
};
