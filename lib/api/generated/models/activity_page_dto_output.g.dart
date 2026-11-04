// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityPageDtoOutput _$ActivityPageDtoOutputFromJson(
  Map<String, dynamic> json,
) => _ActivityPageDtoOutput(
  items: (json['items'] as List<dynamic>)
      .map((e) => Items.fromJson(e as Map<String, dynamic>))
      .toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$ActivityPageDtoOutputToJson(
  _ActivityPageDtoOutput instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
