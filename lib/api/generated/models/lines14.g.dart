// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines14.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines14 _$Lines14FromJson(Map<String, dynamic> json) => _Lines14(
  id: json['id'] as String,
  product: Product9.fromJson(json['product'] as Map<String, dynamic>),
  packUnit: json['packUnit'] == null ? null : PackUnit6.fromJson(json['packUnit'] as Map<String, dynamic>),
  packCount: json['packCount'] as String?,
  quantity: json['quantity'] as String,
  dispatchedQuantity: json['dispatchedQuantity'] as String,
  pendingQuantity: json['pendingQuantity'] as String,
  closed: json['closed'] as bool,
  ratePer: RatePer.fromJson(json['ratePer'] as String),
  rate: (json['rate'] as num?)?.toInt(),
);

Map<String, dynamic> _$Lines14ToJson(_Lines14 instance) => <String, dynamic>{
  'id': instance.id,
  'product': instance.product,
  'packUnit': instance.packUnit,
  'packCount': instance.packCount,
  'quantity': instance.quantity,
  'dispatchedQuantity': instance.dispatchedQuantity,
  'pendingQuantity': instance.pendingQuantity,
  'closed': instance.closed,
  'ratePer': instance.ratePer,
  'rate': instance.rate,
};
