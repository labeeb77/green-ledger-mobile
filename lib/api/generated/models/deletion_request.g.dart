// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deletion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeletionRequest _$DeletionRequestFromJson(Map<String, dynamic> json) => _DeletionRequest(
  id: json['id'] as String,
  status: DeletionRequestStatus.fromJson(json['status'] as String),
  reason: json['reason'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  closedAt: json['closedAt'] == null ? null : DateTime.parse(json['closedAt'] as String),
  closedNote: json['closedNote'] as String?,
  handledBy: DeletionRequestHandledBy.fromJson(json['handledBy'] as String),
);

Map<String, dynamic> _$DeletionRequestToJson(_DeletionRequest instance) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'reason': instance.reason,
  'createdAt': instance.createdAt.toIso8601String(),
  'closedAt': instance.closedAt?.toIso8601String(),
  'closedNote': instance.closedNote,
  'handledBy': instance.handledBy,
};
