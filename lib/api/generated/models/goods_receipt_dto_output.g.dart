// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_receipt_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoodsReceiptDtoOutput _$GoodsReceiptDtoOutputFromJson(
  Map<String, dynamic> json,
) => _GoodsReceiptDtoOutput(
  id: json['id'] as String,
  number: json['number'] as String,
  receiptDate: DateTime.parse(json['receiptDate'] as String),
  supplier: Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
  vehicleNo: json['vehicleNo'] as String?,
  notes: json['notes'] as String?,
  slipPhotoUrl: json['slipPhotoUrl'] as String?,
  status: GoodsReceiptDtoOutputStatus.fromJson(json['status'] as String),
  billing: GoodsReceiptDtoOutputBilling.fromJson(json['billing'] as String),
  lines: (json['lines'] as List<dynamic>)
      .map((e) => Lines.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdBy: json['createdBy'] == null
      ? null
      : CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$GoodsReceiptDtoOutputToJson(
  _GoodsReceiptDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'receiptDate': instance.receiptDate.toIso8601String(),
  'supplier': instance.supplier,
  'vehicleNo': instance.vehicleNo,
  'notes': instance.notes,
  'slipPhotoUrl': instance.slipPhotoUrl,
  'status': instance.status,
  'billing': instance.billing,
  'lines': instance.lines,
  'createdBy': instance.createdBy,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
