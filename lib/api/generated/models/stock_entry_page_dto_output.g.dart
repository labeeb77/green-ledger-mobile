// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_entry_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockEntryPageDtoOutput _$StockEntryPageDtoOutputFromJson(Map<String, dynamic> json) => _StockEntryPageDtoOutput(
  items: (json['items'] as List<dynamic>).map((e) => StockEntryDtoOutput.fromJson(e as Map<String, dynamic>)).toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$StockEntryPageDtoOutputToJson(_StockEntryPageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
