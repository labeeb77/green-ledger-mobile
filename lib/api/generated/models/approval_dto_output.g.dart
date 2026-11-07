// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApprovalDtoOutput _$ApprovalDtoOutputFromJson(Map<String, dynamic> json) => _ApprovalDtoOutput(
  id: json['id'] as String,
  type: ApprovalDtoOutputType.fromJson(json['type'] as String),
  status: ApprovalDtoOutputStatus.fromJson(json['status'] as String),
  requester: Requester.fromJson(json['requester'] as Map<String, dynamic>),
  entityType: json['entityType'] as String,
  entityId: json['entityId'] as String,
  amount: (json['amount'] as num?)?.toInt(),
  reason: json['reason'] as String?,
  payload: json['payload'] as Map<String, dynamic>,
  decidedBy: json['decidedBy'] == null ? null : DecidedBy.fromJson(json['decidedBy'] as Map<String, dynamic>),
  decidedAt: json['decidedAt'] == null ? null : DateTime.parse(json['decidedAt'] as String),
  decisionNote: json['decisionNote'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$ApprovalDtoOutputToJson(_ApprovalDtoOutput instance) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'status': instance.status,
  'requester': instance.requester,
  'entityType': instance.entityType,
  'entityId': instance.entityId,
  'amount': instance.amount,
  'reason': instance.reason,
  'payload': instance.payload,
  'decidedBy': instance.decidedBy,
  'decidedAt': instance.decidedAt?.toIso8601String(),
  'decisionNote': instance.decisionNote,
  'createdAt': instance.createdAt.toIso8601String(),
};
