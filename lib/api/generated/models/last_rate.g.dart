// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastRate _$LastRateFromJson(Map<String, dynamic> json) => _LastRate(
  rate: (json['rate'] as num).toInt(),
  date: DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$LastRateToJson(_LastRate instance) => <String, dynamic>{
  'rate': instance.rate,
  'date': instance.date.toIso8601String(),
};
