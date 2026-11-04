// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent3.dart';
import 'confirmed_by.dart';
import 'handover_dto_output_status.dart';

part 'handover_dto_output.freezed.dart';
part 'handover_dto_output.g.dart';

@Freezed()
abstract class HandoverDtoOutput with _$HandoverDtoOutput {
  const factory HandoverDtoOutput({
    required String id,
    required Agent3 agent,
    required DateTime handoverDate,
    required int declaredAmount,
    required int? countedAmount,
    required int? difference,
    required HandoverDtoOutputStatus status,
    required int bagBalance,
    required String? note,
    required ConfirmedBy? confirmedBy,
    required DateTime? confirmedAt,
    required DateTime createdAt,
  }) = _HandoverDtoOutput;
  
  factory HandoverDtoOutput.fromJson(Map<String, Object?> json) => _$HandoverDtoOutputFromJson(json);
}
