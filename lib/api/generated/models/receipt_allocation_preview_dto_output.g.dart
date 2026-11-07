// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_allocation_preview_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReceiptAllocationPreviewDtoOutput _$ReceiptAllocationPreviewDtoOutputFromJson(Map<String, dynamic> json) =>
    _ReceiptAllocationPreviewDtoOutput(
      openBills: (json['openBills'] as List<dynamic>)
          .map((e) => OpenBills2.fromJson(e as Map<String, dynamic>))
          .toList(),
      allocations: (json['allocations'] as List<dynamic>)
          .map((e) => Allocations8.fromJson(e as Map<String, dynamic>))
          .toList(),
      advance: (json['advance'] as num).toInt(),
      existingAdvance: (json['existingAdvance'] as num).toInt(),
    );

Map<String, dynamic> _$ReceiptAllocationPreviewDtoOutputToJson(_ReceiptAllocationPreviewDtoOutput instance) =>
    <String, dynamic>{
      'openBills': instance.openBills,
      'allocations': instance.allocations,
      'advance': instance.advance,
      'existingAdvance': instance.existingAdvance,
    };
