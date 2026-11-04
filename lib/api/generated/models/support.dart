// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'support.freezed.dart';
part 'support.g.dart';

@Freezed()
abstract class Support with _$Support {
  const factory Support({
    required DateTime expiresAt,
  }) = _Support;
  
  factory Support.fromJson(Map<String, Object?> json) => _$SupportFromJson(json);
}
