// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_count_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockCountPageDtoOutput _$StockCountPageDtoOutputFromJson(Map<String, dynamic> json) => _StockCountPageDtoOutput(
  items: (json['items'] as List<dynamic>).map((e) => StockCountDtoOutput.fromJson(e as Map<String, dynamic>)).toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$StockCountPageDtoOutputToJson(_StockCountPageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
