// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_return_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierReturnPageDtoOutput _$SupplierReturnPageDtoOutputFromJson(Map<String, dynamic> json) =>
    _SupplierReturnPageDtoOutput(
      items: (json['items'] as List<dynamic>)
          .map((e) => SupplierReturnDtoOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['nextCursor'] as String?,
    );

Map<String, dynamic> _$SupplierReturnPageDtoOutputToJson(_SupplierReturnPageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
