// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'by_unit.dart';

part 'wastage_today.freezed.dart';
part 'wastage_today.g.dart';

@Freezed()
abstract class WastageToday with _$WastageToday {
  const factory WastageToday({required List<ByUnit> byUnit, required int pendingApproval}) = _WastageToday;

  factory WastageToday.fromJson(Map<String, Object?> json) => _$WastageTodayFromJson(json);
}
