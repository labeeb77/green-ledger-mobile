// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_return_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierReturnDtoOutput _$SupplierReturnDtoOutputFromJson(Map<String, dynamic> json) => _SupplierReturnDtoOutput(
  id: json['id'] as String,
  number: json['number'] as String,
  supplier: Supplier5.fromJson(json['supplier'] as Map<String, dynamic>),
  returnDate: json['returnDate'] as String,
  bill: json['bill'] == null ? null : Bill.fromJson(json['bill'] as Map<String, dynamic>),
  total: (json['total'] as num).toInt(),
  reason: json['reason'] as String?,
  status: SupplierReturnDtoOutputStatus.fromJson(json['status'] as String),
  lines: (json['lines'] as List<dynamic>).map((e) => Lines5.fromJson(e as Map<String, dynamic>)).toList(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$SupplierReturnDtoOutputToJson(_SupplierReturnDtoOutput instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'supplier': instance.supplier,
  'returnDate': instance.returnDate,
  'bill': instance.bill,
  'total': instance.total,
  'reason': instance.reason,
  'status': instance.status,
  'lines': instance.lines,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
