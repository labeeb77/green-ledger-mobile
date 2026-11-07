// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'type3.dart';

part 'actor.freezed.dart';
part 'actor.g.dart';

@Freezed()
abstract class Actor with _$Actor {
  const factory Actor({required String? id, required String name, required Type3 type}) = _Actor;

  factory Actor.fromJson(Map<String, Object?> json) => _$ActorFromJson(json);
}
