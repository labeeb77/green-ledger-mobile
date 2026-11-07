// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_quote_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RateQuoteDtoOutput _$RateQuoteDtoOutputFromJson(Map<String, dynamic> json) => _RateQuoteDtoOutput(
  rate: (json['rate'] as num?)?.toInt(),
  source: RateQuoteDtoOutputSource.fromJson(json['source'] as String),
  dailyRate: (json['dailyRate'] as num?)?.toInt(),
  dailyRateDate: json['dailyRateDate'] as String?,
  minimumRate: (json['minimumRate'] as num?)?.toInt(),
  belowMinimum: json['belowMinimum'] as bool,
  ratePer: RateQuoteDtoOutputRatePer.fromJson(json['ratePer'] as String),
  lastRate: json['lastRate'] == null ? null : LastRate.fromJson(json['lastRate'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RateQuoteDtoOutputToJson(_RateQuoteDtoOutput instance) => <String, dynamic>{
  'rate': instance.rate,
  'source': instance.source,
  'dailyRate': instance.dailyRate,
  'dailyRateDate': instance.dailyRateDate,
  'minimumRate': instance.minimumRate,
  'belowMinimum': instance.belowMinimum,
  'ratePer': instance.ratePer,
  'lastRate': instance.lastRate,
};
