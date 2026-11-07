// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_subscription_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateSubscriptionDto _$UpdateSubscriptionDtoFromJson(Map<String, dynamic> json) => _UpdateSubscriptionDto(
  status: json['status'] == null ? null : UpdateSubscriptionDtoStatus.fromJson(json['status'] as String),
  expiresAt: json['expiresAt'] == null ? null : DateTime.parse(json['expiresAt'] as String),
  userLimit: (json['userLimit'] as num?)?.toInt(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$UpdateSubscriptionDtoToJson(_UpdateSubscriptionDto instance) => <String, dynamic>{
  'status': instance.status,
  'expiresAt': instance.expiresAt?.toIso8601String(),
  'userLimit': instance.userLimit,
  'notes': instance.notes,
};
