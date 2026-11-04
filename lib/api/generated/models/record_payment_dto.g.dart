// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordPaymentDto _$RecordPaymentDtoFromJson(Map<String, dynamic> json) =>
    _RecordPaymentDto(
      amount: (json['amount'] as num).toInt(),
      method: RecordPaymentDtoMethod.fromJson(json['method'] as String),
      paidOn: json['paidOn'] == null
          ? null
          : DateTime.parse(json['paidOn'] as String),
      reference: json['reference'] as String?,
      notes: json['notes'] as String?,
      extendTo: json['extendTo'] == null
          ? null
          : DateTime.parse(json['extendTo'] as String),
    );

Map<String, dynamic> _$RecordPaymentDtoToJson(_RecordPaymentDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'method': instance.method,
      'paidOn': instance.paidOn?.toIso8601String(),
      'reference': instance.reference,
      'notes': instance.notes,
      'extendTo': instance.extendTo?.toIso8601String(),
    };
