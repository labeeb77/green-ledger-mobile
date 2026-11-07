// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_deletion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PendingDeletion _$PendingDeletionFromJson(Map<String, dynamic> json) => _PendingDeletion(
  userId: json['userId'] as String,
  requestedAt: DateTime.parse(json['requestedAt'] as String),
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$PendingDeletionToJson(_PendingDeletion instance) => <String, dynamic>{
  'userId': instance.userId,
  'requestedAt': instance.requestedAt.toIso8601String(),
  'reason': instance.reason,
};
