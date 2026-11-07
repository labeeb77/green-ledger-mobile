// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierDtoOutput _$SupplierDtoOutputFromJson(Map<String, dynamic> json) => _SupplierDtoOutput(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  notes: json['notes'] as String?,
  openingBalance: (json['openingBalance'] as num).toInt(),
  due: (json['due'] as num).toInt(),
  active: json['active'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$SupplierDtoOutputToJson(_SupplierDtoOutput instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
  'address': instance.address,
  'notes': instance.notes,
  'openingBalance': instance.openingBalance,
  'due': instance.due,
  'active': instance.active,
  'createdAt': instance.createdAt.toIso8601String(),
};
