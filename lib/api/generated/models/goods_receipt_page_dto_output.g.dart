// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_receipt_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoodsReceiptPageDtoOutput _$GoodsReceiptPageDtoOutputFromJson(
  Map<String, dynamic> json,
) => _GoodsReceiptPageDtoOutput(
  items: (json['items'] as List<dynamic>)
      .map((e) => GoodsReceiptDtoOutput.fromJson(e as Map<String, dynamic>))
      .toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$GoodsReceiptPageDtoOutputToJson(
  _GoodsReceiptPageDtoOutput instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
