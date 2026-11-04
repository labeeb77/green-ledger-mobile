// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bills.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bills _$BillsFromJson(Map<String, dynamic> json) => _Bills(
  id: json['id'] as String,
  number: json['number'] as String?,
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$BillsToJson(_Bills instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'total': instance.total,
};
