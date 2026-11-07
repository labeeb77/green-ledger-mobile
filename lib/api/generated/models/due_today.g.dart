// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'due_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DueToday _$DueTodayFromJson(Map<String, dynamic> json) => _DueToday(
  customerId: json['customerId'] as String,
  name: json['name'] as String,
  area: json['area'] as String?,
  phone: json['phone'] as String?,
  outstanding: (json['outstanding'] as num).toInt(),
  due: (json['due'] as num).toInt(),
  overdue: (json['overdue'] as num).toInt(),
  oldestDueDate: json['oldestDueDate'] as String?,
  promisedToday: json['promisedToday'] as bool,
  lastVisit: json['lastVisit'] == null ? null : LastVisit2.fromJson(json['lastVisit'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DueTodayToJson(_DueToday instance) => <String, dynamic>{
  'customerId': instance.customerId,
  'name': instance.name,
  'area': instance.area,
  'phone': instance.phone,
  'outstanding': instance.outstanding,
  'due': instance.due,
  'overdue': instance.overdue,
  'oldestDueDate': instance.oldestDueDate,
  'promisedToday': instance.promisedToday,
  'lastVisit': instance.lastVisit,
};
