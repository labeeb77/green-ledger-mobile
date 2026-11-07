// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rows.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Rows _$RowsFromJson(Map<String, dynamic> json) => _Rows(
  productId: json['productId'] as String,
  productName: json['productName'] as String,
  packUnitId: json['packUnitId'] as String?,
  unitLabel: json['unitLabel'] as String,
  rate: (json['rate'] as num?)?.toInt(),
  previous: json['previous'] == null ? null : Previous.fromJson(json['previous'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RowsToJson(_Rows instance) => <String, dynamic>{
  'productId': instance.productId,
  'productName': instance.productName,
  'packUnitId': instance.packUnitId,
  'unitLabel': instance.unitLabel,
  'rate': instance.rate,
  'previous': instance.previous,
};
