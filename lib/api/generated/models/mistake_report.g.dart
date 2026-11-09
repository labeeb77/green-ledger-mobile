// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mistake_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MistakeReport _$MistakeReportFromJson(Map<String, dynamic> json) => _MistakeReport(
  id: json['id'] as String,
  document: Document2.fromJson(json['document'] as Map<String, dynamic>),
  reason: MistakeReportReason.fromJson(json['reason'] as String),
  note: json['note'] as String?,
  status: MistakeReportStatus.fromJson(json['status'] as String),
  reporter: Reporter2.fromJson(json['reporter'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
  closedBy: json['closedBy'] == null ? null : ClosedBy2.fromJson(json['closedBy'] as Map<String, dynamic>),
  closedAt: json['closedAt'] == null ? null : DateTime.parse(json['closedAt'] as String),
  closeNote: json['closeNote'] as String?,
);

Map<String, dynamic> _$MistakeReportToJson(_MistakeReport instance) => <String, dynamic>{
  'id': instance.id,
  'document': instance.document,
  'reason': instance.reason,
  'note': instance.note,
  'status': instance.status,
  'reporter': instance.reporter,
  'createdAt': instance.createdAt.toIso8601String(),
  'closedBy': instance.closedBy,
  'closedAt': instance.closedAt?.toIso8601String(),
  'closeNote': instance.closeNote,
};
