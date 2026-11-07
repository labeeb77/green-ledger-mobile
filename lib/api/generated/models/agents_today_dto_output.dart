// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agents.dart';

part 'agents_today_dto_output.freezed.dart';
part 'agents_today_dto_output.g.dart';

@Freezed()
abstract class AgentsTodayDtoOutput with _$AgentsTodayDtoOutput {
  const factory AgentsTodayDtoOutput({required String date, required List<Agents> agents}) = _AgentsTodayDtoOutput;

  factory AgentsTodayDtoOutput.fromJson(Map<String, Object?> json) => _$AgentsTodayDtoOutputFromJson(json);
}
