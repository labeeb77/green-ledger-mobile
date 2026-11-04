// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handover_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HandoverDtoOutput _$HandoverDtoOutputFromJson(Map<String, dynamic> json) =>
    _HandoverDtoOutput(
      id: json['id'] as String,
      agent: Agent3.fromJson(json['agent'] as Map<String, dynamic>),
      handoverDate: DateTime.parse(json['handoverDate'] as String),
      declaredAmount: (json['declaredAmount'] as num).toInt(),
      countedAmount: (json['countedAmount'] as num?)?.toInt(),
      difference: (json['difference'] as num?)?.toInt(),
      status: HandoverDtoOutputStatus.fromJson(json['status'] as String),
      bagBalance: (json['bagBalance'] as num).toInt(),
      note: json['note'] as String?,
      confirmedBy: json['confirmedBy'] == null
          ? null
          : ConfirmedBy.fromJson(json['confirmedBy'] as Map<String, dynamic>),
      confirmedAt: json['confirmedAt'] == null
          ? null
          : DateTime.parse(json['confirmedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$HandoverDtoOutputToJson(_HandoverDtoOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'agent': instance.agent,
      'handoverDate': instance.handoverDate.toIso8601String(),
      'declaredAmount': instance.declaredAmount,
      'countedAmount': instance.countedAmount,
      'difference': instance.difference,
      'status': instance.status,
      'bagBalance': instance.bagBalance,
      'note': instance.note,
      'confirmedBy': instance.confirmedBy,
      'confirmedAt': instance.confirmedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
