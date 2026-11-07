// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'collected_today.dart';
import 'due_today.dart';

part 'agent_home_dto_output.freezed.dart';
part 'agent_home_dto_output.g.dart';

@Freezed()
abstract class AgentHomeDtoOutput with _$AgentHomeDtoOutput {
  const factory AgentHomeDtoOutput({
    required String date,
    required int dueOnMyShops,
    required CollectedToday collectedToday,
    required int cashToHandOver,
    required bool handoverPending,
    required List<DueToday> dueToday,
  }) = _AgentHomeDtoOutput;

  factory AgentHomeDtoOutput.fromJson(Map<String, Object?> json) => _$AgentHomeDtoOutputFromJson(json);
}
