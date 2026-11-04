// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unverified_split_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnverifiedSplitDtoOutput _$UnverifiedSplitDtoOutputFromJson(
  Map<String, dynamic> json,
) => _UnverifiedSplitDtoOutput(
  splitId: json['splitId'] as String,
  receiptId: json['receiptId'] as String,
  receiptNumber: json['receiptNumber'] as String,
  receiptDate: DateTime.parse(json['receiptDate'] as String),
  customer: Customer4.fromJson(json['customer'] as Map<String, dynamic>),
  method: UnverifiedSplitDtoOutputMethod.fromJson(json['method'] as String),
  account: Account3.fromJson(json['account'] as Map<String, dynamic>),
  amount: (json['amount'] as num).toInt(),
  reference: json['reference'] as String?,
);

Map<String, dynamic> _$UnverifiedSplitDtoOutputToJson(
  _UnverifiedSplitDtoOutput instance,
) => <String, dynamic>{
  'splitId': instance.splitId,
  'receiptId': instance.receiptId,
  'receiptNumber': instance.receiptNumber,
  'receiptDate': instance.receiptDate.toIso8601String(),
  'customer': instance.customer,
  'method': instance.method,
  'account': instance.account,
  'amount': instance.amount,
  'reference': instance.reference,
};
