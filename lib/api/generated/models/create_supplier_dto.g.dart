// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_supplier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSupplierDto _$CreateSupplierDtoFromJson(Map<String, dynamic> json) =>
    _CreateSupplierDto(
      name: json['name'] as String,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      notes: json['notes'] as String?,
      openingBalance: (json['openingBalance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CreateSupplierDtoToJson(_CreateSupplierDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'notes': instance.notes,
      'openingBalance': instance.openingBalance,
    };
