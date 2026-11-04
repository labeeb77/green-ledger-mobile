// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_permissions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetPermissionsDto _$SetPermissionsDtoFromJson(Map<String, dynamic> json) =>
    _SetPermissionsDto(
      overrides: (json['overrides'] as List<dynamic>)
          .map((e) => Overrides2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SetPermissionsDtoToJson(_SetPermissionsDto instance) =>
    <String, dynamic>{'overrides': instance.overrides};
