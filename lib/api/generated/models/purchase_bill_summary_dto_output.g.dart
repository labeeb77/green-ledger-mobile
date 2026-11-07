// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_bill_summary_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchaseBillSummaryDtoOutput _$PurchaseBillSummaryDtoOutputFromJson(Map<String, dynamic> json) =>
    _PurchaseBillSummaryDtoOutput(
      id: json['id'] as String,
      number: json['number'] as String,
      supplier: Supplier2.fromJson(json['supplier'] as Map<String, dynamic>),
      billDate: json['billDate'] as String,
      dueDate: json['dueDate'] as String,
      supplierInvoiceNo: json['supplierInvoiceNo'] as String?,
      adjustment: (json['adjustment'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      paid: (json['paid'] as num).toInt(),
      open: (json['open'] as num).toInt(),
      paymentStatus: PurchaseBillSummaryDtoOutputPaymentStatus.fromJson(json['paymentStatus'] as String),
      status: PurchaseBillSummaryDtoOutputStatus.fromJson(json['status'] as String),
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      cancelReason: json['cancelReason'] as String?,
    );

Map<String, dynamic> _$PurchaseBillSummaryDtoOutputToJson(_PurchaseBillSummaryDtoOutput instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'supplier': instance.supplier,
  'billDate': instance.billDate,
  'dueDate': instance.dueDate,
  'supplierInvoiceNo': instance.supplierInvoiceNo,
  'adjustment': instance.adjustment,
  'total': instance.total,
  'paid': instance.paid,
  'open': instance.open,
  'paymentStatus': instance.paymentStatus,
  'status': instance.status,
  'notes': instance.notes,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
