// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCustomerReceiptDto _$CreateCustomerReceiptDtoFromJson(Map<String, dynamic> json) => _CreateCustomerReceiptDto(
  customerId: json['customerId'] as String,
  splits: (json['splits'] as List<dynamic>).map((e) => Splits4.fromJson(e as Map<String, dynamic>)).toList(),
  receiptDate: json['receiptDate'] as String?,
  notes: json['notes'] as String?,
  allocations: (json['allocations'] as List<dynamic>?)
      ?.map((e) => Allocations7.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateCustomerReceiptDtoToJson(_CreateCustomerReceiptDto instance) => <String, dynamic>{
  'customerId': instance.customerId,
  'splits': instance.splits,
  'receiptDate': instance.receiptDate,
  'notes': instance.notes,
  'allocations': instance.allocations,
};
