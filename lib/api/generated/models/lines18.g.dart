// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines18.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines18 _$Lines18FromJson(Map<String, dynamic> json) => _Lines18(
  quantity: json['quantity'],
  billLineId: json['billLineId'] as String?,
  productId: json['productId'] as String?,
  packUnitId: json['packUnitId'] as String?,
  packCount: json['packCount'],
  rate: (json['rate'] as num?)?.toInt(),
);

Map<String, dynamic> _$Lines18ToJson(_Lines18 instance) => <String, dynamic>{
  'quantity': instance.quantity,
  'billLineId': instance.billLineId,
  'productId': instance.productId,
  'packUnitId': instance.packUnitId,
  'packCount': instance.packCount,
  'rate': instance.rate,
};
