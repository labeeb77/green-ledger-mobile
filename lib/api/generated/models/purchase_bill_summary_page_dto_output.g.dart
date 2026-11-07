// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_bill_summary_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchaseBillSummaryPageDtoOutput _$PurchaseBillSummaryPageDtoOutputFromJson(Map<String, dynamic> json) =>
    _PurchaseBillSummaryPageDtoOutput(
      items: (json['items'] as List<dynamic>)
          .map((e) => PurchaseBillSummaryDtoOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['nextCursor'] as String?,
    );

Map<String, dynamic> _$PurchaseBillSummaryPageDtoOutputToJson(_PurchaseBillSummaryPageDtoOutput instance) =>
    <String, dynamic>{'items': instance.items, 'nextCursor': instance.nextCursor};
