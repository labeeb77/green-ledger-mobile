// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeDtoOutput _$MeDtoOutputFromJson(Map<String, dynamic> json) => _MeDtoOutput(
  user: User2.fromJson(json['user'] as Map<String, dynamic>),
  mustChangePassword: json['mustChangePassword'] as bool,
  business: json['business'] == null
      ? null
      : Business.fromJson(json['business'] as Map<String, dynamic>),
  subscription: json['subscription'] == null
      ? null
      : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
  permissions: (json['permissions'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, PermissionsPermissions.fromJson(e as String)),
  ),
  support: json['support'] == null
      ? null
      : Support.fromJson(json['support'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MeDtoOutputToJson(_MeDtoOutput instance) =>
    <String, dynamic>{
      'user': instance.user,
      'mustChangePassword': instance.mustChangePassword,
      'business': instance.business,
      'subscription': instance.subscription,
      'permissions': instance.permissions,
      'support': instance.support,
    };
