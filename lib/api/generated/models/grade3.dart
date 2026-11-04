// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade3.freezed.dart';
part 'grade3.g.dart';

@Freezed()
abstract class Grade3 with _$Grade3 {
  const factory Grade3({
    required String id,
    required String name,
  }) = _Grade3;
  
  factory Grade3.fromJson(Map<String, Object?> json) => _$Grade3FromJson(json);
}
