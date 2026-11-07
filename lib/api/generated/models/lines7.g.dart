// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines7.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines7 _$Lines7FromJson(Map<String, dynamic> json) => _Lines7(
  id: json['id'] as String,
  product: Product5.fromJson(json['product'] as Map<String, dynamic>),
  packUnit: json['packUnit'] == null ? null : PackUnit4.fromJson(json['packUnit'] as Map<String, dynamic>),
  packCount: json['packCount'] as String?,
  quantity: json['quantity'] as String,
  wastageReason: json['wastageReason'] == null ? null : WastageReason.fromJson(json['wastageReason'] as String),
  unitCost: (json['unitCost'] as num?)?.toInt(),
  value: (json['value'] as num?)?.toInt(),
);

Map<String, dynamic> _$Lines7ToJson(_Lines7 instance) => <String, dynamic>{
  'id': instance.id,
  'product': instance.product,
  'packUnit': instance.packUnit,
  'packCount': instance.packCount,
  'quantity': instance.quantity,
  'wastageReason': instance.wastageReason,
  'unitCost': instance.unitCost,
  'value': instance.value,
};
