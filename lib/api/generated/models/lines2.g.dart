// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines2 _$Lines2FromJson(Map<String, dynamic> json) => _Lines2(
  productId: json['productId'] as String,
  gradeId: json['gradeId'] as String?,
  packUnitId: json['packUnitId'] as String?,
  packCount: json['packCount'],
  gross: json['gross'],
  tare: json['tare'],
  net: json['net'],
  rate: (json['rate'] as num?)?.toInt(),
);

Map<String, dynamic> _$Lines2ToJson(_Lines2 instance) => <String, dynamic>{
  'productId': instance.productId,
  'gradeId': instance.gradeId,
  'packUnitId': instance.packUnitId,
  'packCount': instance.packCount,
  'gross': instance.gross,
  'tare': instance.tare,
  'net': instance.net,
  'rate': instance.rate,
};
