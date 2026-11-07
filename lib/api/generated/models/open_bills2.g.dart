// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_bills2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenBills2 _$OpenBills2FromJson(Map<String, dynamic> json) => _OpenBills2(
  id: json['id'] as String,
  number: json['number'] as String,
  date: json['date'] as String,
  dueDate: json['dueDate'] as String,
  total: (json['total'] as num).toInt(),
  open: (json['open'] as num).toInt(),
);

Map<String, dynamic> _$OpenBills2ToJson(_OpenBills2 instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'date': instance.date,
  'dueDate': instance.dueDate,
  'total': instance.total,
  'open': instance.open,
};
