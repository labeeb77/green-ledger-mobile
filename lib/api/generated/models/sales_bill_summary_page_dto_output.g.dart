// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_bill_summary_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesBillSummaryPageDtoOutput _$SalesBillSummaryPageDtoOutputFromJson(
  Map<String, dynamic> json,
) => _SalesBillSummaryPageDtoOutput(
  items: (json['items'] as List<dynamic>)
      .map((e) => SalesBillSummaryDtoOutput.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$SalesBillSummaryPageDtoOutputToJson(
  _SalesBillSummaryPageDtoOutput instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'nextCursor': instance.nextCursor,
};
