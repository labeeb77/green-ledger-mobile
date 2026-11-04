// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lines16.freezed.dart';
part 'lines16.g.dart';

@Freezed()
abstract class Lines16 with _$Lines16 {
  const factory Lines16({
    required String orderLineId,
    required dynamic quantity,
    @Default(true)
    bool complete,
    dynamic packCount,
  }) = _Lines16;
  
  factory Lines16.fromJson(Map<String, Object?> json) => _$Lines16FromJson(json);
}
