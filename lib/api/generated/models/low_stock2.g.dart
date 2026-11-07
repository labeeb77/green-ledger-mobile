// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'low_stock2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LowStock2 _$LowStock2FromJson(Map<String, dynamic> json) => _LowStock2(
  productId: json['productId'] as String,
  name: json['name'] as String,
  stockUnit: json['stockUnit'] as String,
  quantity: json['quantity'] as String,
  lowStockLevel: json['lowStockLevel'] as String,
);

Map<String, dynamic> _$LowStock2ToJson(_LowStock2 instance) => <String, dynamic>{
  'productId': instance.productId,
  'name': instance.name,
  'stockUnit': instance.stockUnit,
  'quantity': instance.quantity,
  'lowStockLevel': instance.lowStockLevel,
};
