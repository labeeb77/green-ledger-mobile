// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_business_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBusinessDto _$CreateBusinessDtoFromJson(Map<String, dynamic> json) => _CreateBusinessDto(
  name: json['name'] as String,
  owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
  trialDays: (json['trialDays'] as num?)?.toInt() ?? 14,
  userLimit: (json['userLimit'] as num?)?.toInt() ?? 10,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
);

Map<String, dynamic> _$CreateBusinessDtoToJson(_CreateBusinessDto instance) => <String, dynamic>{
  'name': instance.name,
  'owner': instance.owner,
  'trialDays': instance.trialDays,
  'userLimit': instance.userLimit,
  'phone': instance.phone,
  'address': instance.address,
};
