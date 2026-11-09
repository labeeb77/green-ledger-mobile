// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Subscription3 _$Subscription3FromJson(Map<String, dynamic> json) => _Subscription3(
  status: Status8.fromJson(json['status'] as String),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  userLimit: (json['userLimit'] as num).toInt(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$Subscription3ToJson(_Subscription3 instance) => <String, dynamic>{
  'status': instance.status,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'userLimit': instance.userLimit,
  'notes': instance.notes,
};
