// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines _$LinesFromJson(Map<String, dynamic> json) => _Lines(
  id: json['id'] as String,
  product: Product.fromJson(json['product'] as Map<String, dynamic>),
  grade: json['grade'] == null
      ? null
      : Grade.fromJson(json['grade'] as Map<String, dynamic>),
  packUnit: json['packUnit'] == null
      ? null
      : PackUnit.fromJson(json['packUnit'] as Map<String, dynamic>),
  packCount: json['packCount'] as String?,
  gross: json['gross'] as String?,
  tare: json['tare'] as String?,
  net: json['net'] as String,
  rate: (json['rate'] as num?)?.toInt(),
  billed: json['billed'] as bool,
);

Map<String, dynamic> _$LinesToJson(_Lines instance) => <String, dynamic>{
  'id': instance.id,
  'product': instance.product,
  'grade': instance.grade,
  'packUnit': instance.packUnit,
  'packCount': instance.packCount,
  'gross': instance.gross,
  'tare': instance.tare,
  'net': instance.net,
  'rate': instance.rate,
  'billed': instance.billed,
};
