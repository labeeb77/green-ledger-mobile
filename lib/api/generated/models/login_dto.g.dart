// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => _LoginDto(
  phone: json['phone'] as String,
  password: json['password'] as String,
  device: Device.fromJson(json['device'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginDtoToJson(_LoginDto instance) => <String, dynamic>{
  'phone': instance.phone,
  'password': instance.password,
  'device': instance.device,
};
