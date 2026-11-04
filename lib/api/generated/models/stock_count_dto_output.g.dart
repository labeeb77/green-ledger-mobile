// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_count_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockCountDtoOutput _$StockCountDtoOutputFromJson(Map<String, dynamic> json) =>
    _StockCountDtoOutput(
      id: json['id'] as String,
      number: json['number'] as String?,
      countDate: DateTime.parse(json['countDate'] as String),
      status: StockCountDtoOutputStatus.fromJson(json['status'] as String),
      notes: json['notes'] as String?,
      createdBy: json['createdBy'] == null
          ? null
          : CreatedBy3.fromJson(json['createdBy'] as Map<String, dynamic>),
      approvalId: json['approvalId'] as String?,
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Lines10.fromJson(e as Map<String, dynamic>))
          .toList(),
      postedAt: json['postedAt'] == null
          ? null
          : DateTime.parse(json['postedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$StockCountDtoOutputToJson(
  _StockCountDtoOutput instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'countDate': instance.countDate.toIso8601String(),
  'status': instance.status,
  'notes': instance.notes,
  'createdBy': instance.createdBy,
  'approvalId': instance.approvalId,
  'lines': instance.lines,
  'postedAt': instance.postedAt?.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
};
