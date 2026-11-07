// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unverified_split_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnverifiedSplitPageDtoOutput _$UnverifiedSplitPageDtoOutputFromJson(Map<String, dynamic> json) =>
    _UnverifiedSplitPageDtoOutput(
      items: (json['items'] as List<dynamic>)
          .map((e) => UnverifiedSplitDtoOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['nextCursor'] as String?,
    );

Map<String, dynamic> _$UnverifiedSplitPageDtoOutputToJson(_UnverifiedSplitPageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
