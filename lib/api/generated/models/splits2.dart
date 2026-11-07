// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'method.dart';

part 'splits2.freezed.dart';
part 'splits2.g.dart';

@Freezed()
abstract class Splits2 with _$Splits2 {
  const factory Splits2({required Method method, required String accountId, required int amount, String? reference}) =
      _Splits2;

  factory Splits2.fromJson(Map<String, Object?> json) => _$Splits2FromJson(json);
}
