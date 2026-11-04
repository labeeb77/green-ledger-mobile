// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines3 _$Lines3FromJson(Map<String, dynamic> json) => _Lines3(
  goodsReceiptLineId: json['goodsReceiptLineId'] as String,
  rate: (json['rate'] as num?)?.toInt(),
);

Map<String, dynamic> _$Lines3ToJson(_Lines3 instance) => <String, dynamic>{
  'goodsReceiptLineId': instance.goodsReceiptLineId,
  'rate': instance.rate,
};
