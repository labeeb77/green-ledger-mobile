// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent.freezed.dart';
part 'agent.g.dart';

@Freezed()
abstract class Agent with _$Agent {
  const factory Agent({required String id, required String name}) = _Agent;

  factory Agent.fromJson(Map<String, Object?> json) => _$AgentFromJson(json);
}
