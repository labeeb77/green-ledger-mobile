// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChequePageDtoOutput _$ChequePageDtoOutputFromJson(Map<String, dynamic> json) =>
    _ChequePageDtoOutput(
      items: (json['items'] as List<dynamic>)
          .map((e) => ChequeDtoOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['nextCursor'] as String?,
    );

Map<String, dynamic> _$ChequePageDtoOutputToJson(
  _ChequePageDtoOutput instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
