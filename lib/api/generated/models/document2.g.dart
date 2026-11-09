// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Document2 _$Document2FromJson(Map<String, dynamic> json) => _Document2(
  type: Type5.fromJson(json['type'] as String),
  id: json['id'] as String,
  number: json['number'] as String,
  status: Status3.fromJson(json['status'] as String),
  total: (json['total'] as num).toInt(),
  customer: Customer10.fromJson(json['customer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$Document2ToJson(_Document2 instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'number': instance.number,
  'status': instance.status,
  'total': instance.total,
  'customer': instance.customer,
};
