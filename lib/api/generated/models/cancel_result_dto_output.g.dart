// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_result_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CancelResultDtoOutput _$CancelResultDtoOutputFromJson(Map<String, dynamic> json) => _CancelResultDtoOutput(
  status: CancelResultDtoOutputStatus.fromJson(json['status'] as String),
  approvalId: json['approvalId'] as String?,
);

Map<String, dynamic> _$CancelResultDtoOutputToJson(_CancelResultDtoOutput instance) => <String, dynamic>{
  'status': instance.status,
  'approvalId': instance.approvalId,
};
