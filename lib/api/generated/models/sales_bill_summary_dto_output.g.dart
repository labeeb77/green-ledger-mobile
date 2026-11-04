// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_bill_summary_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesBillSummaryDtoOutput _$SalesBillSummaryDtoOutputFromJson(
  Map<String, dynamic> json,
) => _SalesBillSummaryDtoOutput(
  id: json['id'] as String,
  number: json['number'] as String?,
  billDate: DateTime.parse(json['billDate'] as String),
  dueDate: DateTime.parse(json['dueDate'] as String),
  customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
  subtotal: (json['subtotal'] as num).toInt(),
  rounding: (json['rounding'] as num).toInt(),
  total: (json['total'] as num).toInt(),
  paid: (json['paid'] as num).toInt(),
  open: (json['open'] as num).toInt(),
  paymentStatus: SalesBillSummaryDtoOutputPaymentStatus.fromJson(
    json['paymentStatus'] as String,
  ),
  status: SalesBillSummaryDtoOutputStatus.fromJson(json['status'] as String),
  issues: (json['issues'] as List<dynamic>)
      .map(
        (e) => SalesBillSummaryDtoOutputIssuesUnion.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  approvalId: json['approvalId'] as String?,
  notes: json['notes'] as String?,
  createdBy: json['createdBy'] == null
      ? null
      : CreatedBy4.fromJson(json['createdBy'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$SalesBillSummaryDtoOutputToJson(
  _SalesBillSummaryDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'billDate': instance.billDate.toIso8601String(),
  'dueDate': instance.dueDate.toIso8601String(),
  'customer': instance.customer,
  'subtotal': instance.subtotal,
  'rounding': instance.rounding,
  'total': instance.total,
  'paid': instance.paid,
  'open': instance.open,
  'paymentStatus': instance.paymentStatus,
  'status': instance.status,
  'issues': instance.issues,
  'approvalId': instance.approvalId,
  'notes': instance.notes,
  'createdBy': instance.createdBy,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
