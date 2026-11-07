// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocation_preview_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllocationPreviewDtoOutput _$AllocationPreviewDtoOutputFromJson(Map<String, dynamic> json) =>
    _AllocationPreviewDtoOutput(
      openBills: (json['openBills'] as List<dynamic>)
          .map((e) => OpenBills.fromJson(e as Map<String, dynamic>))
          .toList(),
      allocations: (json['allocations'] as List<dynamic>)
          .map((e) => Allocations4.fromJson(e as Map<String, dynamic>))
          .toList(),
      advance: (json['advance'] as num).toInt(),
      existingAdvance: (json['existingAdvance'] as num).toInt(),
    );

Map<String, dynamic> _$AllocationPreviewDtoOutputToJson(_AllocationPreviewDtoOutput instance) => <String, dynamic>{
  'openBills': instance.openBills,
  'allocations': instance.allocations,
  'advance': instance.advance,
  'existingAdvance': instance.existingAdvance,
};
