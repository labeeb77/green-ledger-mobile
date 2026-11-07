// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_entry_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockEntryDtoOutput _$StockEntryDtoOutputFromJson(Map<String, dynamic> json) => _StockEntryDtoOutput(
  id: json['id'] as String,
  number: json['number'] as String?,
  type: StockEntryDtoOutputType.fromJson(json['type'] as String),
  entryDate: json['entryDate'] as String,
  status: StockEntryDtoOutputStatus.fromJson(json['status'] as String),
  value: (json['value'] as num?)?.toInt(),
  notes: json['notes'] as String?,
  photoUrl: json['photoUrl'] as String?,
  createdBy: json['createdBy'] == null ? null : CreatedBy2.fromJson(json['createdBy'] as Map<String, dynamic>),
  approvalId: json['approvalId'] as String?,
  lines: (json['lines'] as List<dynamic>).map((e) => Lines7.fromJson(e as Map<String, dynamic>)).toList(),
  warnings: (json['warnings'] as List<dynamic>).map((e) => e as String).toList(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  cancelReason: json['cancelReason'] as String?,
);

Map<String, dynamic> _$StockEntryDtoOutputToJson(_StockEntryDtoOutput instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'type': instance.type,
  'entryDate': instance.entryDate,
  'status': instance.status,
  'value': instance.value,
  'notes': instance.notes,
  'photoUrl': instance.photoUrl,
  'createdBy': instance.createdBy,
  'approvalId': instance.approvalId,
  'lines': instance.lines,
  'warnings': instance.warnings,
  'createdAt': instance.createdAt.toIso8601String(),
  'cancelReason': instance.cancelReason,
};
