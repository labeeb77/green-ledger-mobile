// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApprovalPageDtoOutput _$ApprovalPageDtoOutputFromJson(
  Map<String, dynamic> json,
) => _ApprovalPageDtoOutput(
  items: (json['items'] as List<dynamic>)
      .map((e) => ApprovalDtoOutput.fromJson(e as Map<String, dynamic>))
      .toList(),
  nextCursor: json['nextCursor'] as String?,
);

Map<String, dynamic> _$ApprovalPageDtoOutputToJson(
  _ApprovalPageDtoOutput instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
