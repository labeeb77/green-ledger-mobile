// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'items.dart';

part 'activity_page_dto_output.freezed.dart';
part 'activity_page_dto_output.g.dart';

@Freezed()
abstract class ActivityPageDtoOutput with _$ActivityPageDtoOutput {
  const factory ActivityPageDtoOutput({
    required List<Items> items,
    required String? nextCursor,
  }) = _ActivityPageDtoOutput;
  
  factory ActivityPageDtoOutput.fromJson(Map<String, Object?> json) => _$ActivityPageDtoOutputFromJson(json);
}
