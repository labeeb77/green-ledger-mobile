// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines13.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines13 _$Lines13FromJson(Map<String, dynamic> json) => _Lines13(
  id: json['id'] as String,
  product: Product8.fromJson(json['product'] as Map<String, dynamic>),
  grade: json['grade'] == null
      ? null
      : Grade3.fromJson(json['grade'] as Map<String, dynamic>),
  packUnit: json['packUnit'] == null
      ? null
      : PackUnit5.fromJson(json['packUnit'] as Map<String, dynamic>),
  packCount: json['packCount'] as String?,
  quantity: json['quantity'] as String,
  ratePer: RatePer.fromJson(json['ratePer'] as String),
  rate: (json['rate'] as num).toInt(),
  amount: (json['amount'] as num).toInt(),
);

Map<String, dynamic> _$Lines13ToJson(_Lines13 instance) => <String, dynamic>{
  'id': instance.id,
  'product': instance.product,
  'grade': instance.grade,
  'packUnit': instance.packUnit,
  'packCount': instance.packCount,
  'quantity': instance.quantity,
  'ratePer': instance.ratePer,
  'rate': instance.rate,
  'amount': instance.amount,
};
