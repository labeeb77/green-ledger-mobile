// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_pdf_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestPdfDto _$RequestPdfDtoFromJson(Map<String, dynamic> json) =>
    _RequestPdfDto(
      template: RequestPdfDtoTemplate.fromJson(json['template'] as String),
      id: json['id'] as String?,
      format: json['format'] == null
          ? null
          : RequestPdfDtoFormat.fromJson(json['format'] as String),
      from: json['from'] == null
          ? null
          : DateTime.parse(json['from'] as String),
      to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
      report: json['report'] == null
          ? null
          : RequestPdfDtoReport.fromJson(json['report'] as String),
      groupBy: json['groupBy'] == null
          ? null
          : RequestPdfDtoGroupBy.fromJson(json['groupBy'] as String),
    );

Map<String, dynamic> _$RequestPdfDtoToJson(_RequestPdfDto instance) =>
    <String, dynamic>{
      'template': instance.template,
      'id': instance.id,
      'format': instance.format,
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
      'report': instance.report,
      'groupBy': instance.groupBy,
    };
