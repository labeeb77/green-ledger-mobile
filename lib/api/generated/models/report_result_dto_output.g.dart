// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_result_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportResultDtoOutput _$ReportResultDtoOutputFromJson(Map<String, dynamic> json) => _ReportResultDtoOutput(
  report: ReportResultDtoOutputReport.fromJson(json['report'] as String),
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  columns: (json['columns'] as List<dynamic>).map((e) => Columns.fromJson(e as Map<String, dynamic>)).toList(),
  rows: (json['rows'] as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(),
  totals: json['totals'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ReportResultDtoOutputToJson(_ReportResultDtoOutput instance) => <String, dynamic>{
  'report': instance.report,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'columns': instance.columns,
  'rows': instance.rows,
  'totals': instance.totals,
};
