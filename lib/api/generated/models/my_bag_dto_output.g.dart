// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_bag_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyBagDtoOutput _$MyBagDtoOutputFromJson(Map<String, dynamic> json) => _MyBagDtoOutput(
  balance: (json['balance'] as num).toInt(),
  todayCashReceipts: (json['todayCashReceipts'] as List<dynamic>)
      .map((e) => TodayCashReceipts.fromJson(e as Map<String, dynamic>))
      .toList(),
  pendingHandover: json['pendingHandover'] == null
      ? null
      : PendingHandover.fromJson(json['pendingHandover'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MyBagDtoOutputToJson(_MyBagDtoOutput instance) => <String, dynamic>{
  'balance': instance.balance,
  'todayCashReceipts': instance.todayCashReceipts,
  'pendingHandover': instance.pendingHandover,
};
