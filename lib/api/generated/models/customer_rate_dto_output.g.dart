// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_rate_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerRateDtoOutput _$CustomerRateDtoOutputFromJson(
  Map<String, dynamic> json,
) => _CustomerRateDtoOutput(
  productId: json['productId'] as String,
  productName: json['productName'] as String,
  stockUnit: json['stockUnit'] as String,
  mode: CustomerRateDtoOutputMode.fromJson(json['mode'] as String),
  value: (json['value'] as num).toInt(),
);

Map<String, dynamic> _$CustomerRateDtoOutputToJson(
  _CustomerRateDtoOutput instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'productName': instance.productName,
  'stockUnit': instance.stockUnit,
  'mode': instance.mode,
  'value': instance.value,
};
