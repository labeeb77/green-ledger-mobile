// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_row_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockRowDtoOutput _$StockRowDtoOutputFromJson(Map<String, dynamic> json) => _StockRowDtoOutput(
  productId: json['productId'] as String,
  name: json['name'] as String,
  nameMl: json['nameMl'] as String?,
  stockUnit: json['stockUnit'] as String,
  active: json['active'] as bool,
  quantity: json['quantity'] as String,
  packs: (json['packs'] as List<dynamic>).map((e) => Packs.fromJson(e as Map<String, dynamic>)).toList(),
  lowStockLevel: json['lowStockLevel'] as String?,
  lowStock: json['lowStock'] as bool,
  wastageToday: json['wastageToday'] as String,
);

Map<String, dynamic> _$StockRowDtoOutputToJson(_StockRowDtoOutput instance) => <String, dynamic>{
  'productId': instance.productId,
  'name': instance.name,
  'nameMl': instance.nameMl,
  'stockUnit': instance.stockUnit,
  'active': instance.active,
  'quantity': instance.quantity,
  'packs': instance.packs,
  'lowStockLevel': instance.lowStockLevel,
  'lowStock': instance.lowStock,
  'wastageToday': instance.wastageToday,
};
