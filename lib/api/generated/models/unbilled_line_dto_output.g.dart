// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unbilled_line_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnbilledLineDtoOutput _$UnbilledLineDtoOutputFromJson(
  Map<String, dynamic> json,
) => _UnbilledLineDtoOutput(
  goodsReceiptLineId: json['goodsReceiptLineId'] as String,
  receiptId: json['receiptId'] as String,
  receiptNumber: json['receiptNumber'] as String,
  receiptDate: DateTime.parse(json['receiptDate'] as String),
  product: Product2.fromJson(json['product'] as Map<String, dynamic>),
  grade: json['grade'] == null
      ? null
      : Grade2.fromJson(json['grade'] as Map<String, dynamic>),
  packUnit: json['packUnit'] == null
      ? null
      : PackUnit2.fromJson(json['packUnit'] as Map<String, dynamic>),
  packCount: json['packCount'] as String?,
  net: json['net'] as String,
  rate: (json['rate'] as num?)?.toInt(),
);

Map<String, dynamic> _$UnbilledLineDtoOutputToJson(
  _UnbilledLineDtoOutput instance,
) => <String, dynamic>{
  'goodsReceiptLineId': instance.goodsReceiptLineId,
  'receiptId': instance.receiptId,
  'receiptNumber': instance.receiptNumber,
  'receiptDate': instance.receiptDate.toIso8601String(),
  'product': instance.product,
  'grade': instance.grade,
  'packUnit': instance.packUnit,
  'packCount': instance.packCount,
  'net': instance.net,
  'rate': instance.rate,
};
