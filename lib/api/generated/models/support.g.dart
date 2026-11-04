// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Support _$SupportFromJson(Map<String, dynamic> json) =>
    _Support(expiresAt: DateTime.parse(json['expiresAt'] as String));

Map<String, dynamic> _$SupportToJson(_Support instance) => <String, dynamic>{
  'expiresAt': instance.expiresAt.toIso8601String(),
};
