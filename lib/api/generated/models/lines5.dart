// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product4.dart';
import 'pack_unit3.dart';

part 'lines5.freezed.dart';
part 'lines5.g.dart';

@Freezed()
abstract class Lines5 with _$Lines5 {
  const factory Lines5({
    required Product4 product,
    required PackUnit3? packUnit,
    required String? packCount,
    required String quantity,
    required int rate,
    required int amount,
  }) = _Lines5;

  factory Lines5.fromJson(Map<String, Object?> json) => _$Lines5FromJson(json);
}
