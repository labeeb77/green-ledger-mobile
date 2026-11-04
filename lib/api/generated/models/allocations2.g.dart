// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocations2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Allocations2 _$Allocations2FromJson(Map<String, dynamic> json) =>
    _Allocations2(
      creditType: CreditType.fromJson(json['creditType'] as String),
      creditId: json['creditId'] as String,
      creditNumber: json['creditNumber'] as String,
      billId: json['billId'] as String?,
      billNumber: json['billNumber'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$Allocations2ToJson(_Allocations2 instance) =>
    <String, dynamic>{
      'creditType': instance.creditType,
      'creditId': instance.creditId,
      'creditNumber': instance.creditNumber,
      'billId': instance.billId,
      'billNumber': instance.billNumber,
      'amount': instance.amount,
    };
