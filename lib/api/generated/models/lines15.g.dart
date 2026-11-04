// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines15.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines15 _$Lines15FromJson(Map<String, dynamic> json) => _Lines15(
  productId: json['productId'] as String,
  rate: (json['rate'] as num).toInt(),
  ratePer: json['ratePer'] == null
      ? RatePer.stockUnit
      : RatePer.fromJson(json['ratePer'] as String),
  packUnitId: json['packUnitId'] as String?,
  packCount: json['packCount'],
  quantity: json['quantity'],
);

Map<String, dynamic> _$Lines15ToJson(_Lines15 instance) => <String, dynamic>{
  'productId': instance.productId,
  'rate': instance.rate,
  'ratePer': instance.ratePer,
  'packUnitId': instance.packUnitId,
  'packCount': instance.packCount,
  'quantity': instance.quantity,
};
