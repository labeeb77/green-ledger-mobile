// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_receipt_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerReceiptDtoOutput _$CustomerReceiptDtoOutputFromJson(
  Map<String, dynamic> json,
) => _CustomerReceiptDtoOutput(
  id: json['id'] as String,
  number: json['number'] as String,
  customer: Customer3.fromJson(json['customer'] as Map<String, dynamic>),
  receiptDate: DateTime.parse(json['receiptDate'] as String),
  collectedBy: CollectedBy.fromJson(
    json['collectedBy'] as Map<String, dynamic>,
  ),
  total: (json['total'] as num).toInt(),
  status: CustomerReceiptDtoOutputStatus.fromJson(json['status'] as String),
  notes: json['notes'] as String?,
  splits: (json['splits'] as List<dynamic>)
      .map((e) => Splits3.fromJson(e as Map<String, dynamic>))
      .toList(),
  allocations: (json['allocations'] as List<dynamic>)
      .map((e) => Allocations6.fromJson(e as Map<String, dynamic>))
      .toList(),
  unallocated: (json['unallocated'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$CustomerReceiptDtoOutputToJson(
  _CustomerReceiptDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'customer': instance.customer,
  'receiptDate': instance.receiptDate.toIso8601String(),
  'collectedBy': instance.collectedBy,
  'total': instance.total,
  'status': instance.status,
  'notes': instance.notes,
  'splits': instance.splits,
  'allocations': instance.allocations,
  'unallocated': instance.unallocated,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
