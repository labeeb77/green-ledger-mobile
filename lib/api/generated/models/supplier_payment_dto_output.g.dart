// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_payment_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierPaymentDtoOutput _$SupplierPaymentDtoOutputFromJson(
  Map<String, dynamic> json,
) => _SupplierPaymentDtoOutput(
  id: json['id'] as String,
  number: json['number'] as String,
  supplier: Supplier4.fromJson(json['supplier'] as Map<String, dynamic>),
  paymentDate: DateTime.parse(json['paymentDate'] as String),
  total: (json['total'] as num).toInt(),
  status: SupplierPaymentDtoOutputStatus.fromJson(json['status'] as String),
  notes: json['notes'] as String?,
  splits: (json['splits'] as List<dynamic>)
      .map((e) => Splits.fromJson(e as Map<String, dynamic>))
      .toList(),
  allocations: (json['allocations'] as List<dynamic>)
      .map((e) => Allocations2.fromJson(e as Map<String, dynamic>))
      .toList(),
  unallocated: (json['unallocated'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$SupplierPaymentDtoOutputToJson(
  _SupplierPaymentDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'supplier': instance.supplier,
  'paymentDate': instance.paymentDate.toIso8601String(),
  'total': instance.total,
  'status': instance.status,
  'notes': instance.notes,
  'splits': instance.splits,
  'allocations': instance.allocations,
  'unallocated': instance.unallocated,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
