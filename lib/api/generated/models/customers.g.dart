// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Customers _$CustomersFromJson(Map<String, dynamic> json) => _Customers(
  id: json['id'] as String,
  name: json['name'] as String,
  detail: json['detail'] as String?,
);

Map<String, dynamic> _$CustomersToJson(_Customers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detail': instance.detail,
    };
