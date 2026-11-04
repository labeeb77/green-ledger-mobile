// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines5.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines5 _$Lines5FromJson(Map<String, dynamic> json) => _Lines5(
  product: Product4.fromJson(json['product'] as Map<String, dynamic>),
  packUnit: json['packUnit'] == null
      ? null
      : PackUnit3.fromJson(json['packUnit'] as Map<String, dynamic>),
  packCount: json['packCount'] as String?,
  quantity: json['quantity'] as String,
  rate: (json['rate'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$Lines5ToJson(_Lines5 instance) => <String, dynamic>{
  'product': instance.product,
  'packUnit': instance.packUnit,
  'packCount': instance.packCount,
  'quantity': instance.quantity,
  'rate': instance.rate,
  'amount': instance.amount,
};
