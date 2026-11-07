// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_deletion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlatformDeletionRequest _$PlatformDeletionRequestFromJson(Map<String, dynamic> json) => _PlatformDeletionRequest(
  id: json['id'] as String,
  status: PlatformDeletionRequestStatus.fromJson(json['status'] as String),
  reason: json['reason'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  closedAt: json['closedAt'] == null ? null : DateTime.parse(json['closedAt'] as String),
  closedNote: json['closedNote'] as String?,
  handledBy: PlatformDeletionRequestHandledBy.fromJson(json['handledBy'] as String),
  businessId: json['businessId'] as String,
  businessName: json['businessName'] as String,
  userId: json['userId'] as String,
  userName: json['userName'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
);

Map<String, dynamic> _$PlatformDeletionRequestToJson(_PlatformDeletionRequest instance) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'reason': instance.reason,
  'createdAt': instance.createdAt.toIso8601String(),
  'closedAt': instance.closedAt?.toIso8601String(),
  'closedNote': instance.closedNote,
  'handledBy': instance.handledBy,
  'businessId': instance.businessId,
  'businessName': instance.businessName,
  'userId': instance.userId,
  'userName': instance.userName,
  'phone': instance.phone,
  'role': instance.role,
};
