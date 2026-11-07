// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Subscription2 _$Subscription2FromJson(Map<String, dynamic> json) => _Subscription2(
  status: Status7.fromJson(json['status'] as String),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  userLimit: (json['userLimit'] as num).toInt(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$Subscription2ToJson(_Subscription2 instance) => <String, dynamic>{
  'status': instance.status,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'userLimit': instance.userLimit,
  'notes': instance.notes,
};
