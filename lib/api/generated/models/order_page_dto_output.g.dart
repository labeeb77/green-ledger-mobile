// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderPageDtoOutput _$OrderPageDtoOutputFromJson(Map<String, dynamic> json) => _OrderPageDtoOutput(
  items: (json['items'] as List<dynamic>).map((e) => OrderDtoOutput.fromJson(e as Map<String, dynamic>)).toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$OrderPageDtoOutputToJson(_OrderPageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
