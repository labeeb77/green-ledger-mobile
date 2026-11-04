// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent3.freezed.dart';
part 'agent3.g.dart';

@Freezed()
abstract class Agent3 with _$Agent3 {
  const factory Agent3({
    required String id,
    required String name,
  }) = _Agent3;
  
  factory Agent3.fromJson(Map<String, Object?> json) => _$Agent3FromJson(json);
}
