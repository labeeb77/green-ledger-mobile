// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Allocations _$AllocationsFromJson(Map<String, dynamic> json) => _Allocations(
  creditType: CreditType.fromJson(json['creditType'] as String),
  creditId: json['creditId'] as String,
  creditNumber: json['creditNumber'] as String,
  billId: json['billId'] as String?,
  billNumber: json['billNumber'] as String,
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$AllocationsToJson(_Allocations instance) =>
    <String, dynamic>{
      'creditType': instance.creditType,
      'creditId': instance.creditId,
      'creditNumber': instance.creditNumber,
      'billId': instance.billId,
      'billNumber': instance.billNumber,
      'amount': instance.amount,
    };
