// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent2.freezed.dart';
part 'agent2.g.dart';

@Freezed()
abstract class Agent2 with _$Agent2 {
  const factory Agent2({
    required String id,
    required String name,
  }) = _Agent2;
  
  factory Agent2.fromJson(Map<String, Object?> json) => _$Agent2FromJson(json);
}
