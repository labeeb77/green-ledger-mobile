// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_daily_rates_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetDailyRatesDto _$SetDailyRatesDtoFromJson(Map<String, dynamic> json) => _SetDailyRatesDto(
  date: json['date'] as String,
  rates: (json['rates'] as List<dynamic>).map((e) => Rates.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$SetDailyRatesDtoToJson(_SetDailyRatesDto instance) => <String, dynamic>{
  'date': instance.date,
  'rates': instance.rates,
};
