// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_permissions_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPermissionsDtoOutput _$UserPermissionsDtoOutputFromJson(
  Map<String, dynamic> json,
) => _UserPermissionsDtoOutput(
  role: UserPermissionsDtoOutputRole.fromJson(json['role'] as String),
  overrides: (json['overrides'] as List<dynamic>)
      .map((e) => Overrides.fromJson(e as Map<String, dynamic>))
      .toList(),
  effective: (json['effective'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, EffectiveEffective.fromJson(e as String)),
  ),
);

Map<String, dynamic> _$UserPermissionsDtoOutputToJson(
  _UserPermissionsDtoOutput instance,
) => <String, dynamic>{
  'role': instance.role,
  'overrides': instance.overrides,
  'effective': instance.effective,
};
