// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_supplier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateSupplierDto _$UpdateSupplierDtoFromJson(Map<String, dynamic> json) => _UpdateSupplierDto(
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  notes: json['notes'] as String?,
  openingBalance: (json['openingBalance'] as num?)?.toInt(),
  active: json['active'] as bool?,
);

Map<String, dynamic> _$UpdateSupplierDtoToJson(_UpdateSupplierDto instance) => <String, dynamic>{
  'name': instance.name,
  'phone': instance.phone,
  'address': instance.address,
  'notes': instance.notes,
  'openingBalance': instance.openingBalance,
  'active': instance.active,
};
