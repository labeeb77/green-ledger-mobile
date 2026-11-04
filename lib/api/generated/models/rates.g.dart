// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Rates _$RatesFromJson(Map<String, dynamic> json) => _Rates(
  productId: json['productId'] as String,
  packUnitId: json['packUnitId'] as String?,
  rate: (json['rate'] as num?)?.toInt(),
);

Map<String, dynamic> _$RatesToJson(_Rates instance) => <String, dynamic>{
  'productId': instance.productId,
  'packUnitId': instance.packUnitId,
  'rate': instance.rate,
};
