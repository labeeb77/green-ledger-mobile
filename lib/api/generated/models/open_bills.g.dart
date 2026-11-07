// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_bills.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenBills _$OpenBillsFromJson(Map<String, dynamic> json) => _OpenBills(
  id: json['id'] as String,
  number: json['number'] as String,
  date: json['date'] as String,
  dueDate: json['dueDate'] as String,
  total: (json['total'] as num).toInt(),
  open: (json['open'] as num).toInt(),
);

Map<String, dynamic> _$OpenBillsToJson(_OpenBills instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'date': instance.date,
  'dueDate': instance.dueDate,
  'total': instance.total,
  'open': instance.open,
};
