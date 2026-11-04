// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product9.dart';
import 'pack_unit6.dart';
import 'rate_per.dart';

part 'lines14.freezed.dart';
part 'lines14.g.dart';

@Freezed()
abstract class Lines14 with _$Lines14 {
  const factory Lines14({
    required String id,
    required Product9 product,
    required PackUnit6? packUnit,
    required String? packCount,
    required String quantity,
    required String dispatchedQuantity,
    required String pendingQuantity,
    required bool closed,
    required RatePer ratePer,
    required int? rate,
  }) = _Lines14;
  
  factory Lines14.fromJson(Map<String, Object?> json) => _$Lines14FromJson(json);
}
