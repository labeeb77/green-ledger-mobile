// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_cash_receipts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodayCashReceipts _$TodayCashReceiptsFromJson(Map<String, dynamic> json) =>
    _TodayCashReceipts(
      receiptNumber: json['receiptNumber'] as String,
      customer: json['customer'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$TodayCashReceiptsToJson(_TodayCashReceipts instance) =>
    <String, dynamic>{
      'receiptNumber': instance.receiptNumber,
      'customer': instance.customer,
      'amount': instance.amount,
    };
