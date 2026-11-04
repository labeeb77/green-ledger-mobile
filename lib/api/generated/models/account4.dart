// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account4.freezed.dart';
part 'account4.g.dart';

@Freezed()
abstract class Account4 with _$Account4 {
  const factory Account4({
    required String id,
    required String name,
  }) = _Account4;
  
  factory Account4.fromJson(Map<String, Object?> json) => _$Account4FromJson(json);
}
