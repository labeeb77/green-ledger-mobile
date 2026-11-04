// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'low_stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LowStock _$LowStockFromJson(Map<String, dynamic> json) => _LowStock(
  productId: json['productId'] as String,
  name: json['name'] as String,
  stockUnit: json['stockUnit'] as String,
  quantity: json['quantity'] as String,
  lowStockLevel: json['lowStockLevel'] as String,
);

Map<String, dynamic> _$LowStockToJson(_LowStock instance) => <String, dynamic>{
  'productId': instance.productId,
  'name': instance.name,
  'stockUnit': instance.stockUnit,
  'quantity': instance.quantity,
  'lowStockLevel': instance.lowStockLevel,
};
