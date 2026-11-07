// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_return_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerReturnPageDtoOutput _$CustomerReturnPageDtoOutputFromJson(Map<String, dynamic> json) =>
    _CustomerReturnPageDtoOutput(
      items: (json['items'] as List<dynamic>)
          .map((e) => CustomerReturnDtoOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['nextCursor'] as String?,
    );

Map<String, dynamic> _$CustomerReturnPageDtoOutputToJson(_CustomerReturnPageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
