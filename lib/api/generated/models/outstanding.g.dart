// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outstanding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Outstanding _$OutstandingFromJson(Map<String, dynamic> json) => _Outstanding(
  total: (json['total'] as num).toInt(),
  overdue: (json['overdue'] as num).toInt(),
  customers: (json['customers'] as num).toInt(),
  link: Link3.fromJson(json['link'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OutstandingToJson(_Outstanding instance) =>
    <String, dynamic>{
      'total': instance.total,
      'overdue': instance.overdue,
      'customers': instance.customers,
      'link': instance.link,
    };
