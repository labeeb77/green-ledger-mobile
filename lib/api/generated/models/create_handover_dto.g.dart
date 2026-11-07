// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_handover_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateHandoverDto _$CreateHandoverDtoFromJson(Map<String, dynamic> json) =>
    _CreateHandoverDto(declaredAmount: (json['declaredAmount'] as num?)?.toInt(), note: json['note'] as String?);

Map<String, dynamic> _$CreateHandoverDtoToJson(_CreateHandoverDto instance) => <String, dynamic>{
  'declaredAmount': instance.declaredAmount,
  'note': instance.note,
};
