// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lines16.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Lines16 _$Lines16FromJson(Map<String, dynamic> json) => _Lines16(
  orderLineId: json['orderLineId'] as String,
  quantity: json['quantity'],
  complete: json['complete'] as bool? ?? true,
  packCount: json['packCount'],
);

Map<String, dynamic> _$Lines16ToJson(_Lines16 instance) => <String, dynamic>{
  'orderLineId': instance.orderLineId,
  'quantity': instance.quantity,
  'complete': instance.complete,
  'packCount': instance.packCount,
};
