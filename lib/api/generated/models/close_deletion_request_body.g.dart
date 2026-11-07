// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'close_deletion_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CloseDeletionRequestBody _$CloseDeletionRequestBodyFromJson(Map<String, dynamic> json) => _CloseDeletionRequestBody(
  status: CloseDeletionRequestBodyStatus.fromJson(json['status'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$CloseDeletionRequestBodyToJson(_CloseDeletionRequestBody instance) => <String, dynamic>{
  'status': instance.status,
  'note': instance.note,
};
