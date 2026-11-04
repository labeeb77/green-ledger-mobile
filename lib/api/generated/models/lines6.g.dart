// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines6.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines6 _$Lines6FromJson(Map<String, dynamic> json) => _Lines6(
  productId: json['productId'] as String,
  quantity: json['quantity'],
  rate: (json['rate'] as num).toInt(),
  packUnitId: json['packUnitId'] as String?,
  packCount: json['packCount'],
);

Map<String, dynamic> _$Lines6ToJson(_Lines6 instance) => <String, dynamic>{
  'productId': instance.productId,
  'quantity': instance.quantity,
  'rate': instance.rate,
  'packUnitId': instance.packUnitId,
  'packCount': instance.packCount,
};
