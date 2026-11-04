// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_payment_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionPaymentDtoOutput _$SubscriptionPaymentDtoOutputFromJson(
  Map<String, dynamic> json,
) => _SubscriptionPaymentDtoOutput(
  id: json['id'] as String,
  amount: (json['amount'] as num).toInt(),
  paidOn: DateTime.parse(json['paidOn'] as String),
  method: json['method'] as String,
  reference: json['reference'] as String?,
  notes: json['notes'] as String?,
  extendedTo: json['extendedTo'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$SubscriptionPaymentDtoOutputToJson(
  _SubscriptionPaymentDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'paidOn': instance.paidOn.toIso8601String(),
  'method': instance.method,
  'reference': instance.reference,
  'notes': instance.notes,
  'extendedTo': instance.extendedTo,
  'createdAt': instance.createdAt.toIso8601String(),
};
