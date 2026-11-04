// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines10.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines10 _$Lines10FromJson(Map<String, dynamic> json) => _Lines10(
  product: Product6.fromJson(json['product'] as Map<String, dynamic>),
  snapshotQuantity: json['snapshotQuantity'] as String,
  countedQuantity: json['countedQuantity'] as String?,
  systemQuantity: json['systemQuantity'] as String,
  difference: json['difference'] as String?,
);

Map<String, dynamic> _$Lines10ToJson(_Lines10 instance) => <String, dynamic>{
  'product': instance.product,
  'snapshotQuantity': instance.snapshotQuantity,
  'countedQuantity': instance.countedQuantity,
  'systemQuantity': instance.systemQuantity,
  'difference': instance.difference,
};
