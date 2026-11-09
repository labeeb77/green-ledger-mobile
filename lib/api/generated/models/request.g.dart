// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Request _$RequestFromJson(Map<String, dynamic> json) => _Request(
  id: json['id'] as String,
  status: Status9.fromJson(json['status'] as String),
  reason: json['reason'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  closedAt: json['closedAt'] == null ? null : DateTime.parse(json['closedAt'] as String),
  closedNote: json['closedNote'] as String?,
  handledBy: HandledBy.fromJson(json['handledBy'] as String),
);

Map<String, dynamic> _$RequestToJson(_Request instance) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'reason': instance.reason,
  'createdAt': instance.createdAt.toIso8601String(),
  'closedAt': instance.closedAt?.toIso8601String(),
  'closedNote': instance.closedNote,
  'handledBy': instance.handledBy,
};
