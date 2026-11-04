// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_return_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerReturnDtoOutput _$CustomerReturnDtoOutputFromJson(
  Map<String, dynamic> json,
) => _CustomerReturnDtoOutput(
  id: json['id'] as String,
  number: json['number'] as String?,
  returnDate: DateTime.parse(json['returnDate'] as String),
  customer: Customer7.fromJson(json['customer'] as Map<String, dynamic>),
  bill: json['bill'] == null
      ? null
      : Bill2.fromJson(json['bill'] as Map<String, dynamic>),
  total: (json['total'] as num?)?.toInt(),
  status: CustomerReturnDtoOutputStatus.fromJson(json['status'] as String),
  notes: json['notes'] as String?,
  createdBy: json['createdBy'] == null
      ? null
      : CreatedBy6.fromJson(json['createdBy'] as Map<String, dynamic>),
  approvalId: json['approvalId'] as String?,
  lines: (json['lines'] as List<dynamic>)
      .map((e) => Lines17.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$CustomerReturnDtoOutputToJson(
  _CustomerReturnDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'returnDate': instance.returnDate.toIso8601String(),
  'customer': instance.customer,
  'bill': instance.bill,
  'total': instance.total,
  'status': instance.status,
  'notes': instance.notes,
  'createdBy': instance.createdBy,
  'approvalId': instance.approvalId,
  'lines': instance.lines,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
