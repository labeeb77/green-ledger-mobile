// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'businesses.freezed.dart';
part 'businesses.g.dart';

@Freezed()
abstract class Businesses with _$Businesses {
  const factory Businesses({
    required int total,
    required int active,
    required int trial,
    required int expired,
    required int suspended,
  }) = _Businesses;

  factory Businesses.fromJson(Map<String, Object?> json) => _$BusinessesFromJson(json);
}
