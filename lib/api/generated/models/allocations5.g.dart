// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocations5.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Allocations5 _$Allocations5FromJson(Map<String, dynamic> json) => _Allocations5(
  receiptId: json['receiptId'] as String,
  receiptNumber: json['receiptNumber'] as String,
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$Allocations5ToJson(_Allocations5 instance) => <String, dynamic>{
  'receiptId': instance.receiptId,
  'receiptNumber': instance.receiptNumber,
  'amount': instance.amount,
};
