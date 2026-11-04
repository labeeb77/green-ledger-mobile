// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_rate.freezed.dart';
part 'last_rate.g.dart';

@Freezed()
abstract class LastRate with _$LastRate {
  const factory LastRate({
    required int rate,
    required DateTime date,
  }) = _LastRate;
  
  factory LastRate.fromJson(Map<String, Object?> json) => _$LastRateFromJson(json);
}
