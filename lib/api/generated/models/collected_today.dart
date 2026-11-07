// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'by_method2.dart';

part 'collected_today.freezed.dart';
part 'collected_today.g.dart';

@Freezed()
abstract class CollectedToday with _$CollectedToday {
  const factory CollectedToday({required int total, required ByMethod2 byMethod}) = _CollectedToday;

  factory CollectedToday.fromJson(Map<String, Object?> json) => _$CollectedTodayFromJson(json);
}
