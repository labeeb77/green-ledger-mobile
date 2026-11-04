// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_reports_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AvailableReportsDtoOutput _$AvailableReportsDtoOutputFromJson(
  Map<String, dynamic> json,
) => _AvailableReportsDtoOutput(
  report: Report.fromJson(json['report'] as String),
  title: json['title'] as String,
);

Map<String, dynamic> _$AvailableReportsDtoOutputToJson(
  _AvailableReportsDtoOutput instance,
) => <String, dynamic>{'report': instance.report, 'title': instance.title};
