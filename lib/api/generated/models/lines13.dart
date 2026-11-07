// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product8.dart';
import 'grade3.dart';
import 'pack_unit5.dart';
import 'rate_per.dart';

part 'lines13.freezed.dart';
part 'lines13.g.dart';

@Freezed()
abstract class Lines13 with _$Lines13 {
  const factory Lines13({
    required String id,
    required Product8 product,
    required Grade3? grade,
    required PackUnit5? packUnit,
    required String? packCount,
    required String quantity,
    required RatePer ratePer,
    required int rate,
    required int amount,
  }) = _Lines13;

  factory Lines13.fromJson(Map<String, Object?> json) => _$Lines13FromJson(json);
}
