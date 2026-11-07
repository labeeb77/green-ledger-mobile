// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_supplier_return_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSupplierReturnDto _$CreateSupplierReturnDtoFromJson(Map<String, dynamic> json) => _CreateSupplierReturnDto(
  supplierId: json['supplierId'] as String,
  lines: (json['lines'] as List<dynamic>).map((e) => Lines6.fromJson(e as Map<String, dynamic>)).toList(),
  returnDate: json['returnDate'] as String?,
  billId: json['billId'] as String?,
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$CreateSupplierReturnDtoToJson(_CreateSupplierReturnDto instance) => <String, dynamic>{
  'supplierId': instance.supplierId,
  'lines': instance.lines,
  'returnDate': instance.returnDate,
  'billId': instance.billId,
  'reason': instance.reason,
};
