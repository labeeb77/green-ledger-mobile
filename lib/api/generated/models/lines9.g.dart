// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines9.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines9 _$Lines9FromJson(Map<String, dynamic> json) => _Lines9(
  productId: json['productId'] as String,
  quantity: json['quantity'],
  direction: Direction.fromJson(json['direction'] as String),
  packUnitId: json['packUnitId'] as String?,
  packCount: json['packCount'],
);

Map<String, dynamic> _$Lines9ToJson(_Lines9 instance) => <String, dynamic>{
  'productId': instance.productId,
  'quantity': instance.quantity,
  'direction': instance.direction,
  'packUnitId': instance.packUnitId,
  'packCount': instance.packCount,
};
