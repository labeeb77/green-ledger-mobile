// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_sales_bill_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSalesBillDto _$CreateSalesBillDtoFromJson(Map<String, dynamic> json) => _CreateSalesBillDto(
  customerId: json['customerId'] as String,
  lines: (json['lines'] as List<dynamic>).map((e) => Lines12.fromJson(e as Map<String, dynamic>)).toList(),
  rounding: (json['rounding'] as num?)?.toInt() ?? 0,
  billDate: json['billDate'] as String?,
  notes: json['notes'] as String?,
  payNow: (json['payNow'] as List<dynamic>?)?.map((e) => PayNow.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$CreateSalesBillDtoToJson(_CreateSalesBillDto instance) => <String, dynamic>{
  'customerId': instance.customerId,
  'lines': instance.lines,
  'rounding': instance.rounding,
  'billDate': instance.billDate,
  'notes': instance.notes,
  'payNow': instance.payNow,
};
