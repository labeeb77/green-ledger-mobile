// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Items3 _$Items3FromJson(Map<String, dynamic> json) => _Items3(
  id: json['id'] as String,
  document: Document.fromJson(json['document'] as Map<String, dynamic>),
  reason: Reason3.fromJson(json['reason'] as String),
  note: json['note'] as String?,
  status: Status7.fromJson(json['status'] as String),
  reporter: Reporter.fromJson(json['reporter'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
  closedBy: json['closedBy'] == null ? null : ClosedBy.fromJson(json['closedBy'] as Map<String, dynamic>),
  closedAt: json['closedAt'] == null ? null : DateTime.parse(json['closedAt'] as String),
  closeNote: json['closeNote'] as String?,
);

Map<String, dynamic> _$Items3ToJson(_Items3 instance) => <String, dynamic>{
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
