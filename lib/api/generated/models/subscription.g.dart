// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Subscription _$SubscriptionFromJson(Map<String, dynamic> json) =>
    _Subscription(
      status: Status7.fromJson(json['status'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      userLimit: (json['userLimit'] as num).toInt(),
      access: Access.fromJson(json['access'] as String),
    );

Map<String, dynamic> _$SubscriptionToJson(_Subscription instance) =>
    <String, dynamic>{
      'status': instance.status,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'userLimit': instance.userLimit,
      'access': instance.access,
    };
