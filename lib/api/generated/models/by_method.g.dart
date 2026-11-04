// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ByMethod _$ByMethodFromJson(Map<String, dynamic> json) => _ByMethod(
  cash: (json['cash'] as num).toInt(),
  upi: (json['upi'] as num).toInt(),
  bankTransfer: (json['bank_transfer'] as num).toInt(),
  cheque: (json['cheque'] as num).toInt(),
);

Map<String, dynamic> _$ByMethodToJson(_ByMethod instance) => <String, dynamic>{
  'cash': instance.cash,
  'upi': instance.upi,
  'bank_transfer': instance.bankTransfer,
  'cheque': instance.cheque,
};
