// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_purchase_bill_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePurchaseBillDto _$CreatePurchaseBillDtoFromJson(
  Map<String, dynamic> json,
) => _CreatePurchaseBillDto(
  supplierId: json['supplierId'] as String,
  lines: (json['lines'] as List<dynamic>)
      .map((e) => Lines3.fromJson(e as Map<String, dynamic>))
      .toList(),
  adjustment: (json['adjustment'] as num?)?.toInt() ?? 0,
  billDate: json['billDate'] == null
      ? null
      : DateTime.parse(json['billDate'] as String),
  dueDate: json['dueDate'] == null
      ? null
      : DateTime.parse(json['dueDate'] as String),
  supplierInvoiceNo: json['supplierInvoiceNo'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$CreatePurchaseBillDtoToJson(
  _CreatePurchaseBillDto instance,
) => <String, dynamic>{
  'supplierId': instance.supplierId,
  'lines': instance.lines,
  'adjustment': instance.adjustment,
  'billDate': instance.billDate?.toIso8601String(),
  'dueDate': instance.dueDate?.toIso8601String(),
  'supplierInvoiceNo': instance.supplierInvoiceNo,
  'notes': instance.notes,
};
