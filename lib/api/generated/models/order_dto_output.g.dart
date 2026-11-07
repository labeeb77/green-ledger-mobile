// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDtoOutput _$OrderDtoOutputFromJson(Map<String, dynamic> json) => _OrderDtoOutput(
  id: json['id'] as String,
  number: json['number'] as String,
  orderDate: json['orderDate'] as String,
  customer: Customer6.fromJson(json['customer'] as Map<String, dynamic>),
  agent: json['agent'] == null ? null : Agent2.fromJson(json['agent'] as Map<String, dynamic>),
  status: OrderDtoOutputStatus.fromJson(json['status'] as String),
  estimatedTotal: (json['estimatedTotal'] as num?)?.toInt(),
  notes: json['notes'] as String?,
  lines: (json['lines'] as List<dynamic>).map((e) => Lines14.fromJson(e as Map<String, dynamic>)).toList(),
  bills: (json['bills'] as List<dynamic>).map((e) => Bills.fromJson(e as Map<String, dynamic>)).toList(),
  approvalId: json['approvalId'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$OrderDtoOutputToJson(_OrderDtoOutput instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'orderDate': instance.orderDate,
  'customer': instance.customer,
  'agent': instance.agent,
  'status': instance.status,
  'estimatedTotal': instance.estimatedTotal,
  'notes': instance.notes,
  'lines': instance.lines,
  'bills': instance.bills,
  'approvalId': instance.approvalId,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
