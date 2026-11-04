// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_bills2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenBills2 _$OpenBills2FromJson(Map<String, dynamic> json) => _OpenBills2(
  id: json['id'] as String,
  number: json['number'] as String,
  date: DateTime.parse(json['date'] as String),
  dueDate: DateTime.parse(json['dueDate'] as String),
  total: (json['total'] as num).toInt(),
  open: (json['open'] as num).toInt(),
);

Map<String, dynamic> _$OpenBills2ToJson(_OpenBills2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'date': instance.date.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'total': instance.total,
      'open': instance.open,
    };
