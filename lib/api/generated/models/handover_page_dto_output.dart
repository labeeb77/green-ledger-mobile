// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'handover_dto_output.dart';

part 'handover_page_dto_output.freezed.dart';
part 'handover_page_dto_output.g.dart';

@Freezed()
abstract class HandoverPageDtoOutput with _$HandoverPageDtoOutput {
  const factory HandoverPageDtoOutput({
    required List<HandoverDtoOutput> items,
    required String? nextCursor,
  }) = _HandoverPageDtoOutput;
  
  factory HandoverPageDtoOutput.fromJson(Map<String, Object?> json) => _$HandoverPageDtoOutputFromJson(json);
}
