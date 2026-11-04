// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines4.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines4 _$Lines4FromJson(Map<String, dynamic> json) => _Lines4(
  id: json['id'] as String,
  goodsReceiptLineId: json['goodsReceiptLineId'] as String,
  receiptNumber: json['receiptNumber'] as String,
  product: Product3.fromJson(json['product'] as Map<String, dynamic>),
  quantity: json['quantity'] as String,
  rate: (json['rate'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$Lines4ToJson(_Lines4 instance) => <String, dynamic>{
  'id': instance.id,
  'goodsReceiptLineId': instance.goodsReceiptLineId,
  'receiptNumber': instance.receiptNumber,
  'product': instance.product,
  'quantity': instance.quantity,
  'rate': instance.rate,
  'amount': instance.amount,
};
