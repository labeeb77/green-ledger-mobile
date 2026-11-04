// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_rates_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyRatesDtoOutput _$DailyRatesDtoOutputFromJson(Map<String, dynamic> json) =>
    _DailyRatesDtoOutput(
      date: DateTime.parse(json['date'] as String),
      rows: (json['rows'] as List<dynamic>)
          .map((e) => Rows.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailyRatesDtoOutputToJson(
  _DailyRatesDtoOutput instance,
) => <String, dynamic>{
  'date': instance.date.toIso8601String(),
  'rows': instance.rows,
};
