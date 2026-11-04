// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines12.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines12 _$Lines12FromJson(Map<String, dynamic> json) => _Lines12(
  productId: json['productId'] as String,
  rate: (json['rate'] as num).toInt(),
  ratePer: json['ratePer'] == null
      ? RatePer.stockUnit
      : RatePer.fromJson(json['ratePer'] as String),
  gradeId: json['gradeId'] as String?,
  packUnitId: json['packUnitId'] as String?,
  packCount: json['packCount'],
  quantity: json['quantity'],
);

Map<String, dynamic> _$Lines12ToJson(_Lines12 instance) => <String, dynamic>{
  'productId': instance.productId,
  'rate': instance.rate,
  'ratePer': instance.ratePer,
  'gradeId': instance.gradeId,
  'packUnitId': instance.packUnitId,
  'packCount': instance.packCount,
  'quantity': instance.quantity,
};
