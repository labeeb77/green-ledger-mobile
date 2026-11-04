// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Business2 _$Business2FromJson(Map<String, dynamic> json) => _Business2(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  subscription: json['subscription'] == null
      ? null
      : Subscription3.fromJson(json['subscription'] as Map<String, dynamic>),
  userCount: (json['userCount'] as num).toInt(),
  activeUserCount: (json['activeUserCount'] as num).toInt(),
  lastActivityAt: json['lastActivityAt'] as String?,
  supportAccessUntil: json['supportAccessUntil'] as String?,
);

Map<String, dynamic> _$Business2ToJson(_Business2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'createdAt': instance.createdAt.toIso8601String(),
      'subscription': instance.subscription,
      'userCount': instance.userCount,
      'activeUserCount': instance.activeUserCount,
      'lastActivityAt': instance.lastActivityAt,
      'supportAccessUntil': instance.supportAccessUntil,
    };
