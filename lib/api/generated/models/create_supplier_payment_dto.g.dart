// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_supplier_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSupplierPaymentDto _$CreateSupplierPaymentDtoFromJson(Map<String, dynamic> json) => _CreateSupplierPaymentDto(
  supplierId: json['supplierId'] as String,
  splits: (json['splits'] as List<dynamic>).map((e) => Splits2.fromJson(e as Map<String, dynamic>)).toList(),
  paymentDate: json['paymentDate'] as String?,
  notes: json['notes'] as String?,
  allocations: (json['allocations'] as List<dynamic>?)
      ?.map((e) => Allocations3.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateSupplierPaymentDtoToJson(_CreateSupplierPaymentDto instance) => <String, dynamic>{
  'supplierId': instance.supplierId,
  'splits': instance.splits,
  'paymentDate': instance.paymentDate,
  'notes': instance.notes,
  'allocations': instance.allocations,
};
