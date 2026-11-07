// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_count_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCountDto _$CreateCountDtoFromJson(Map<String, dynamic> json) => _CreateCountDto(
  countDate: json['countDate'] as String?,
  productIds: (json['productIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$CreateCountDtoToJson(_CreateCountDto instance) => <String, dynamic>{
  'countDate': instance.countDate,
  'productIds': instance.productIds,
  'notes': instance.notes,
};
