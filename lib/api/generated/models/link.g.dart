// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Link _$LinkFromJson(Map<String, dynamic> json) => _Link(
  report: Report.fromJson(json['report'] as String),
  groupBy: json['groupBy'] as String?,
);

Map<String, dynamic> _$LinkToJson(_Link instance) => <String, dynamic>{
  'report': instance.report,
  'groupBy': instance.groupBy,
};
