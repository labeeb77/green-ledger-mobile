// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_handover_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfirmHandoverDto _$ConfirmHandoverDtoFromJson(Map<String, dynamic> json) => _ConfirmHandoverDto(
  countedAmount: (json['countedAmount'] as num).toInt(),
  accountId: json['accountId'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$ConfirmHandoverDtoToJson(_ConfirmHandoverDto instance) => <String, dynamic>{
  'countedAmount': instance.countedAmount,
  'accountId': instance.accountId,
  'note': instance.note,
};
