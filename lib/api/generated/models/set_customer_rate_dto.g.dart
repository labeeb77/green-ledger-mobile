// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_customer_rate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetCustomerRateDto _$SetCustomerRateDtoFromJson(Map<String, dynamic> json) => _SetCustomerRateDto(
  mode: SetCustomerRateDtoMode.fromJson(json['mode'] as String),
  value: (json['value'] as num).toInt(),
);

Map<String, dynamic> _$SetCustomerRateDtoToJson(_SetCustomerRateDto instance) => <String, dynamic>{
  'mode': instance.mode,
  'value': instance.value,
};
