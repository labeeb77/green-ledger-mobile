// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateCustomerDto _$UpdateCustomerDtoFromJson(Map<String, dynamic> json) => _UpdateCustomerDto(
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  whatsapp: json['whatsapp'] as String?,
  area: json['area'] as String?,
  address: json['address'] as String?,
  notes: json['notes'] as String?,
  priceGroupId: json['priceGroupId'] as String?,
  creditLimit: (json['creditLimit'] as num?)?.toInt(),
  creditDays: (json['creditDays'] as num?)?.toInt(),
  agentUserId: json['agentUserId'] as String?,
  openingBalance: (json['openingBalance'] as num?)?.toInt(),
  status: json['status'] == null ? null : UpdateCustomerDtoStatus.fromJson(json['status'] as String),
);

Map<String, dynamic> _$UpdateCustomerDtoToJson(_UpdateCustomerDto instance) => <String, dynamic>{
  'name': instance.name,
  'phone': instance.phone,
  'whatsapp': instance.whatsapp,
  'area': instance.area,
  'address': instance.address,
  'notes': instance.notes,
  'priceGroupId': instance.priceGroupId,
  'creditLimit': instance.creditLimit,
  'creditDays': instance.creditDays,
  'agentUserId': instance.agentUserId,
  'openingBalance': instance.openingBalance,
  'status': instance.status,
};
