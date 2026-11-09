// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_mistake_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageMistakeReport _$PageMistakeReportFromJson(Map<String, dynamic> json) => _PageMistakeReport(
  items: (json['items'] as List<dynamic>).map((e) => Items3.fromJson(e as Map<String, dynamic>)).toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$PageMistakeReportToJson(_PageMistakeReport instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
