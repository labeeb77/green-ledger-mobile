// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_bill_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesBillDtoOutput _$SalesBillDtoOutputFromJson(Map<String, dynamic> json) =>
    _SalesBillDtoOutput(
      id: json['id'] as String,
      number: json['number'] as String?,
      billDate: DateTime.parse(json['billDate'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
      customer: Customer2.fromJson(json['customer'] as Map<String, dynamic>),
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Lines13.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: (json['subtotal'] as num).toInt(),
      rounding: (json['rounding'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      paid: (json['paid'] as num).toInt(),
      open: (json['open'] as num).toInt(),
      paymentStatus: SalesBillDtoOutputPaymentStatus.fromJson(
        json['paymentStatus'] as String,
      ),
      status: SalesBillDtoOutputStatus.fromJson(json['status'] as String),
      issues: (json['issues'] as List<dynamic>)
          .map(
            (e) => SalesBillDtoOutputIssuesUnion.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      approvalId: json['approvalId'] as String?,
      allocations: (json['allocations'] as List<dynamic>)
          .map((e) => Allocations5.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: json['notes'] as String?,
      createdBy: json['createdBy'] == null
          ? null
          : CreatedBy5.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      cancelReason: json['cancelReason'] as String?,
      warnings: (json['warnings'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SalesBillDtoOutputToJson(_SalesBillDtoOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'billDate': instance.billDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'customer': instance.customer,
      'lines': instance.lines,
      'subtotal': instance.subtotal,
      'rounding': instance.rounding,
      'total': instance.total,
      'paid': instance.paid,
      'open': instance.open,
      'paymentStatus': instance.paymentStatus,
      'status': instance.status,
      'issues': instance.issues,
      'approvalId': instance.approvalId,
      'allocations': instance.allocations,
      'notes': instance.notes,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'cancelReason': instance.cancelReason,
      'warnings': instance.warnings,
    };
