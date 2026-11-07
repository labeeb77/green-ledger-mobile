// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'items2.dart';

part 'notification_list_dto_output.freezed.dart';
part 'notification_list_dto_output.g.dart';

@Freezed()
abstract class NotificationListDtoOutput with _$NotificationListDtoOutput {
  const factory NotificationListDtoOutput({
    required int unread,
    required List<Items2> items,
  }) = _NotificationListDtoOutput;
  
  factory NotificationListDtoOutput.fromJson(Map<String, Object?> json) => _$NotificationListDtoOutputFromJson(json);
}
