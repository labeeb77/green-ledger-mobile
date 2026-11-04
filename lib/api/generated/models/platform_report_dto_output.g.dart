// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_report_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlatformReportDtoOutput _$PlatformReportDtoOutputFromJson(
  Map<String, dynamic> json,
) => _PlatformReportDtoOutput(
  businesses: Businesses.fromJson(json['businesses'] as Map<String, dynamic>),
  trialsEnding7: (json['trialsEnding7'] as num).toInt(),
  renewalsDue7: (json['renewalsDue7'] as num).toInt(),
  renewalsDue30: (json['renewalsDue30'] as num).toInt(),
  dueSoon: (json['dueSoon'] as List<dynamic>)
      .map((e) => DueSoon.fromJson(e as Map<String, dynamic>))
      .toList(),
  paymentsThisMonth: PaymentsThisMonth.fromJson(
    json['paymentsThisMonth'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PlatformReportDtoOutputToJson(
  _PlatformReportDtoOutput instance,
) => <String, dynamic>{
  'businesses': instance.businesses,
  'trialsEnding7': instance.trialsEnding7,
  'renewalsDue7': instance.renewalsDue7,
  'renewalsDue30': instance.renewalsDue30,
  'dueSoon': instance.dueSoon,
  'paymentsThisMonth': instance.paymentsThisMonth,
};
