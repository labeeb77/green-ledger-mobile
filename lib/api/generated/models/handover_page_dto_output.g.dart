// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handover_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HandoverPageDtoOutput _$HandoverPageDtoOutputFromJson(
  Map<String, dynamic> json,
) => _HandoverPageDtoOutput(
  items: (json['items'] as List<dynamic>)
      .map((e) => HandoverDtoOutput.fromJson(e as Map<String, dynamic>))
      .toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$HandoverPageDtoOutputToJson(
  _HandoverPageDtoOutput instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
