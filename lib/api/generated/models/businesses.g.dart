// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'businesses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Businesses _$BusinessesFromJson(Map<String, dynamic> json) => _Businesses(
  total: (json['total'] as num).toInt(),
  active: (json['active'] as num).toInt(),
  trial: (json['trial'] as num).toInt(),
  expired: (json['expired'] as num).toInt(),
  suspended: (json['suspended'] as num).toInt(),
);

Map<String, dynamic> _$BusinessesToJson(_Businesses instance) =>
    <String, dynamic>{
      'total': instance.total,
      'active': instance.active,
      'trial': instance.trial,
      'expired': instance.expired,
      'suspended': instance.suspended,
    };
