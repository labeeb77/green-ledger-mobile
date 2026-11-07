// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocations6.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Allocations6 _$Allocations6FromJson(Map<String, dynamic> json) => _Allocations6(
  billId: json['billId'] as String?,
  billNumber: json['billNumber'] as String,
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$Allocations6ToJson(_Allocations6 instance) => <String, dynamic>{
  'billId': instance.billId,
  'billNumber': instance.billNumber,
  'amount': instance.amount,
};
