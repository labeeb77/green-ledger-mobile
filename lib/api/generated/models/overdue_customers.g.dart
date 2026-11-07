// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overdue_customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OverdueCustomers _$OverdueCustomersFromJson(Map<String, dynamic> json) => _OverdueCustomers(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  agent: json['agent'] as String?,
  outstanding: (json['outstanding'] as num).toInt(),
  overdue: (json['overdue'] as num).toInt(),
);

Map<String, dynamic> _$OverdueCustomersToJson(_OverdueCustomers instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'agent': instance.agent,
  'outstanding': instance.outstanding,
  'overdue': instance.overdue,
};
