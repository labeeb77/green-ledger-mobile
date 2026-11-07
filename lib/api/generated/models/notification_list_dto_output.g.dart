// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationListDtoOutput _$NotificationListDtoOutputFromJson(Map<String, dynamic> json) => _NotificationListDtoOutput(
  unread: (json['unread'] as num).toInt(),
  items: (json['items'] as List<dynamic>).map((e) => Items2.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$NotificationListDtoOutputToJson(_NotificationListDtoOutput instance) => <String, dynamic>{
  'unread': instance.unread,
  'items': instance.items,
};
