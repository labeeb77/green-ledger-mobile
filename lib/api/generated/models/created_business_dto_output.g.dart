// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_business_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatedBusinessDtoOutput _$CreatedBusinessDtoOutputFromJson(Map<String, dynamic> json) => _CreatedBusinessDtoOutput(
  business: Business2.fromJson(json['business'] as Map<String, dynamic>),
  owner: Owner2.fromJson(json['owner'] as Map<String, dynamic>),
  temporaryPassword: json['temporaryPassword'] as String,
);

Map<String, dynamic> _$CreatedBusinessDtoOutputToJson(_CreatedBusinessDtoOutput instance) => <String, dynamic>{
  'business': instance.business,
  'owner': instance.owner,
  'temporaryPassword': instance.temporaryPassword,
};
