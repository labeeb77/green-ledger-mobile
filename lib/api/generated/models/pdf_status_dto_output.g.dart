// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_status_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PdfStatusDtoOutput _$PdfStatusDtoOutputFromJson(Map<String, dynamic> json) => _PdfStatusDtoOutput(
  jobId: json['jobId'] as String?,
  status: PdfStatusDtoOutputStatus.fromJson(json['status'] as String),
  url: json['url'] as String?,
  filename: json['filename'] as String,
  error: json['error'] as String?,
);

Map<String, dynamic> _$PdfStatusDtoOutputToJson(_PdfStatusDtoOutput instance) => <String, dynamic>{
  'jobId': instance.jobId,
  'status': instance.status,
  'url': instance.url,
  'filename': instance.filename,
  'error': instance.error,
};
