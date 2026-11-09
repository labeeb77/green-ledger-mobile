// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_mistake_report_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateMistakeReportBody _$CreateMistakeReportBodyFromJson(Map<String, dynamic> json) => _CreateMistakeReportBody(
  documentType: CreateMistakeReportBodyDocumentType.fromJson(json['documentType'] as String),
  documentId: json['documentId'] as String,
  reason: CreateMistakeReportBodyReason.fromJson(json['reason'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$CreateMistakeReportBodyToJson(_CreateMistakeReportBody instance) => <String, dynamic>{
  'documentType': instance.documentType,
  'documentId': instance.documentId,
  'reason': instance.reason,
  'note': instance.note,
};
