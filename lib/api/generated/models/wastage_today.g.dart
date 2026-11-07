// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wastage_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WastageToday _$WastageTodayFromJson(Map<String, dynamic> json) => _WastageToday(
  byUnit: (json['byUnit'] as List<dynamic>).map((e) => ByUnit.fromJson(e as Map<String, dynamic>)).toList(),
  pendingApproval: (json['pendingApproval'] as num).toInt(),
);

Map<String, dynamic> _$WastageTodayToJson(_WastageToday instance) => <String, dynamic>{
  'byUnit': instance.byUnit,
  'pendingApproval': instance.pendingApproval,
};
