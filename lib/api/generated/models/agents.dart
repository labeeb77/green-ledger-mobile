// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'collected.dart';

part 'agents.freezed.dart';
part 'agents.g.dart';

@Freezed()
abstract class Agents with _$Agents {
  const factory Agents({
    required String userId,
    required String name,
    required Collected collected,
    required int visits,
    required int cashInBag,
    required bool handoverPending,
  }) = _Agents;

  factory Agents.fromJson(Map<String, Object?> json) => _$AgentsFromJson(json);
}
