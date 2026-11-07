// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_receipt_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerReceiptPageDtoOutput _$CustomerReceiptPageDtoOutputFromJson(Map<String, dynamic> json) =>
    _CustomerReceiptPageDtoOutput(
      items: (json['items'] as List<dynamic>)
          .map((e) => CustomerReceiptDtoOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      nextCursor: json['nextCursor'] as String?,
    );

Map<String, dynamic> _$CustomerReceiptPageDtoOutputToJson(_CustomerReceiptPageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'nextCursor': instance.nextCursor,
};
