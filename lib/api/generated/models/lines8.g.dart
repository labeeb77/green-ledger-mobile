// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines8.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines8 _$Lines8FromJson(Map<String, dynamic> json) => _Lines8(
  productId: json['productId'] as String,
  quantity: json['quantity'],
  reason: Reason.fromJson(json['reason'] as String),
  packUnitId: json['packUnitId'] as String?,
  packCount: json['packCount'],
);

Map<String, dynamic> _$Lines8ToJson(_Lines8 instance) => <String, dynamic>{
  'productId': instance.productId,
  'quantity': instance.quantity,
  'reason': instance.reason,
  'packUnitId': instance.packUnitId,
  'packCount': instance.packCount,
};
