// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Previous _$PreviousFromJson(Map<String, dynamic> json) =>
    _Previous(rate: (json['rate'] as num).toInt(), date: json['date'] as String);

Map<String, dynamic> _$PreviousToJson(_Previous instance) => <String, dynamic>{
  'rate': instance.rate,
  'date': instance.date,
};
