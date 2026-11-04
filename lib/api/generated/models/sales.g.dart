// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Sales _$SalesFromJson(Map<String, dynamic> json) => _Sales(
  total: (json['total'] as num).toInt(),
  bills: (json['bills'] as num).toInt(),
  link: Link.fromJson(json['link'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SalesToJson(_Sales instance) => <String, dynamic>{
  'total': instance.total,
  'bills': instance.bills,
  'link': instance.link,
};
