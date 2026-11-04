// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'previous.freezed.dart';
part 'previous.g.dart';

@Freezed()
abstract class Previous with _$Previous {
  const factory Previous({
    required int rate,
    required DateTime date,
  }) = _Previous;
  
  factory Previous.fromJson(Map<String, Object?> json) => _$PreviousFromJson(json);
}
