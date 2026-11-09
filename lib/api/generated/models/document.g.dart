// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Document _$DocumentFromJson(Map<String, dynamic> json) => _Document(
  type: Type5.fromJson(json['type'] as String),
  id: json['id'] as String,
  number: json['number'] as String,
  status: Status3.fromJson(json['status'] as String),
  total: (json['total'] as num).toInt(),
  customer: Customer9.fromJson(json['customer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DocumentToJson(_Document instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'number': instance.number,
  'status': instance.status,
  'total': instance.total,
  'customer': instance.customer,
};
